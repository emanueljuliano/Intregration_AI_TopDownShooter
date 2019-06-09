extends KinematicBody2D

var vel = 1200
var raio = 200
var destino = Vector2()
var tempo_espera = 3
var tempo = 1
var tempo_movendo_max = 0.2
var tempo_movendo = 0

var pre_spawn_vida = preload("res://scenes/vida.tscn")

var vida = 40
var dano = 10

var death = 0

export var ativo = true

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if vida <= 0:
		if death == 0:
			game.inimigos_mortos += 1
			death = 1
		
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
	if tempo_movendo <= 0:
		tempo = tempo - delta
	if tempo <= 0:
		destino = random_point(get_global_position(), raio)
		get_node("RayCast2D").look_at(destino)
		get_node("RayCast2D").force_raycast_update()
		if (not get_node("RayCast2D").is_colliding()):
			look_at(destino)
			tempo = tempo_espera
			tempo_movendo = tempo_movendo_max
			get_node("grilo").play()

func _physics_process(delta):
	if vida > 0 and ativo:
		if tempo_movendo > 0:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
			tempo_movendo = tempo_movendo - delta
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func random_point(centro, raio):
	var x = rand_range(centro.x - raio, centro.x + raio)
	var y = rand_range(centro.y - raio, centro.y + raio)
	if(Vector2(x, y).distance_to(centro) > raio or Vector2(x, y).distance_to(centro) < 100):
		return random_point(centro, raio)
	else:
		return Vector2(x, y)
	pass