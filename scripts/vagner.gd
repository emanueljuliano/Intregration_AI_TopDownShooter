extends KinematicBody2D

var vel = 200

var preso = false
var tempo = rand_range(1, 2)
var tempo_espera = 3
export var aceso = false
export var ativo = true

var pre_spawn_vida = preload("res://scenes/vida.tscn")

var angulo = 0
var rotacao = 4
var negativo = 1

var vida = 40

var death = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	get_node("Light2D").enabled = aceso
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if tempo > 0 and ativo:
		tempo = tempo - delta
	
	if tempo <= 0 and ativo:
		tempo = rand_range(1, 5)
		get_node("Light2D").enabled = not aceso
		aceso = not aceso
	
	
	if vida <= 0:
		if death == 0:
			game.inimigos_mortos += 1
			death = 1
		var spawn_vida = pre_spawn_vida.instance()
		spawn_vida.set_global_position(get_global_position())
		game.get_main().add_child(spawn_vida)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(3, false)
		set_collision_mask_bit(3, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")

func _physics_process(delta):
	if vida > 0 and ativo:
		move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
		#MODO DE PATRULHA
		random_negative()
		angulo = angulo + (randi()%rotacao) * negativo
		set_rotation(deg2rad(angulo))
		if get_slide_count() > 0:
			#TOCAR EM ALGO QUE NAO SEJA AMIGO NO MODO PATRULHA
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

func random_negative():
	if randi()%50 == 0 and not preso:
		negativo = -negativo
	pass