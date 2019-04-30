extends KinematicBody2D

var vel = 400
var amigos = []
var quantos_amigos = 4

var raio_grupo = 100
var agrupado = false
var atacando = false
var preso = false

var angulo = 0
var rotacao = 4
var negativo = 1

var vida = 40
var dano = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if vida <= 0:
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(0, false)
		set_collision_mask_bit(0, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")
		
	morreu_coitado()
	atualizar_amigos()
	raio_grupo = 100 + len(amigos)*25
	if len(amigos) < quantos_amigos:
		atacando = false

func _physics_process(delta):
	if vida > 0:
		# TIRAR DO COMENTÁRIO SE QUISER QUE ANTONY FIQUE PARADO AO CHEGAR AO PONTO MÉDIO
		if not (agrupado and not todos_agrupados() and get_global_position().distance_to(ponto_medio(amigos)) <= 10) or atacando:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
		if len(amigos) >= quantos_amigos:
			if todos_agrupados() or atacando:
				#MODO DE ATAQUE
				atacando = true
				get_node("sprite").modulate.r = 0.5
				get_node("sprite").modulate.g = 0
				get_node("sprite").modulate.b = 0
				look_at(game.get_player().get_position())
				if get_slide_count() > 0:
					if get_slide_collision(0).collider == game.get_player():
						game.get_player().dano_player(dano, get_global_position())
			else:
				#MODO DE AGRUPAR
				get_node("sprite").modulate.r = 1
				get_node("sprite").modulate.g = 1
				get_node("sprite").modulate.b = 0
				look_at(ponto_medio(amigos))
				if get_global_position().distance_to(ponto_medio(amigos)) <= raio_grupo:
					agrupado = true
				else:
					agrupado = false
						
		else:
			#MODO DE PATRULHA
			get_node("sprite").modulate.r = 1
			get_node("sprite").modulate.g = 1
			get_node("sprite").modulate.b = 1
			agrupado = false
			random_negative()
			angulo = angulo + (randi()%rotacao) * negativo
			set_rotation(deg2rad(angulo))
			if get_slide_count() > 0:
				if get_slide_collision(0).collider.has_method("add_amigo"):
					preso = false
					if not amigos.has(get_slide_collision(0).collider):
						add_amigo(get_slide_collision(0).collider)
						if not get_slide_collision(0).collider.amigos.has(self):
							get_slide_collision(0).collider.add_amigo(self)
				#TOCAR EM ALGO QUE NAO SEJA AMIGO NO MODO PATRULHA
				else:
					preso = true
			else:
				preso = false
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func random_point(centro, raio):
	var x = rand_range(centro.get_global_position() - raio, centro.get_global_position() + 2*raio)
	var y = rand_range(centro.get_global_position() - raio, centro.get_global_position() + 2*raio)
	if Vector2(x, y).distance_to(centro.get_global_position()) <= raio:
		return Vector2(x, y)
	else:
		return random_point(centro, raio)
	pass

func add_amigo(antony):
	amigos.append(antony)
	pass

func ponto_medio(array):
	var media = Vector2()
	var i = 0
	while i < len(array):
		media = media + array[i].get_global_position()
		i = i + 1
	return media/len(array)
	pass

func random_negative():
	if randi()%25 == 0 and not preso:
		negativo = -negativo
	pass

func todos_agrupados():
	var i = 0
	var amigos_prontos = 0
	while i < len(amigos):
		if amigos[i].agrupado:
			amigos_prontos = amigos_prontos + 1
		i = i + 1
	if amigos_prontos == len(amigos) and agrupado:
		return true
	else:
		return false
	pass

func atualizar_amigos():
	var i = 0
	while i < len(amigos):
		var n = 0
		while n < len(amigos):
			if not amigos[i].amigos.has(amigos[n]) and amigos[i] != amigos[n]:
				amigos[i].add_amigo(amigos[n])
			n = n + 1
		i = i + 1
	pass

func morreu_coitado():
	var i = 0
	while i < len(amigos):
		if amigos[i].vida <= 0:
			amigos.remove(i)
		i = i + 1
	pass