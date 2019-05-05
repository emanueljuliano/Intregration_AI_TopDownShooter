extends KinematicBody2D

var vel = 400
var raio = 600
var esperando = false
var destino = Vector2()
var tempo_espera = 1
var tempo = 0

var pre_spawn_vida = preload("res://scenes/vida.tscn")

var vida = 40
var dano = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if vida <= 0:
		var spawn_vida = pre_spawn_vida.instance()
		spawn_vida.set_global_position(get_global_position())
		game.get_main().add_child(spawn_vida)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(0, false)
		set_collision_mask_bit(0, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")
		
	#ESPERAR UM POUCO QUANDO CHEGAR NO DESTINO
	if get_global_position().distance_to(destino) <= 20:
		esperando = true
	else:
		esperando = false
	if esperando:
		tempo = tempo - delta
	if tempo <= 0:
		destino = random_point(get_global_position(), raio)
		look_at(destino)
		tempo = tempo_espera

func _physics_process(delta):
	if vida > 0:
		#TOCAR EM ALGUMA COISA
		if get_slide_count() > 0:
			esperando = false
			tempo = 0
		if not esperando:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func random_point(centro, raio):
	var x = rand_range(centro.x - raio, centro.x + raio)
	var y = rand_range(centro.y - raio, centro.y + raio)
	if Vector2(x, y).distance_to(centro) <= raio:
		return Vector2(x, y)
	else:
		return random_point(centro, raio)
	pass