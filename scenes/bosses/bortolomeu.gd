extends KinematicBody2D

var vel = 75

var preso = false
var direcao = 1
var iluminado = false

var fugindo = false
var destino = "spawnador1"
var last_num = 0

var angulo = 0
var rotacao = 4
var negativo = 1

var vida = 200
var dano = 5

var path = PoolVector2Array()# setget set_path

export var ativo = true


# Called when the node enters the scene tree for the first time.
func _ready():
	path = game.get_main().get_node("nav").get_simple_path(global_position, game.get_player().global_position)
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path = game.get_main().get_node("nav").get_simple_path(global_position, game.get_main().get_node(destino).global_position, true)
	if vida <= 0:
		game.get_main().get_node("spawnador1").ativado = false
		game.get_main().get_node("spawnador2").ativado = false
		game.get_main().get_node("spawnador3").ativado = false
		game.get_main().get_node("spawnador4").ativado = false
		game.get_main().get_node("Light2D").visible = true
		remove_from_group(game.INIMIGO)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(12, false)
		set_collision_mask_bit(12, false)
		get_node("sprite").visible = false
		get_node("anim").play("morrer")
	

func _physics_process(delta):
	if vida > 0 and ativo:
		
		if not fugindo:
			random_negative()
			angulo = angulo + (randi()%rotacao) * negativo
			set_rotation(deg2rad(angulo))
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
		
		else:
			look_at(path[1])
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * 5 * vel)
			if global_position.distance_to(game.get_main().get_node(destino).global_position) < 200:
				fugindo = false
			
		
		
		#BATER
		if get_slide_count() > 0:
			if get_slide_collision(0).collider == game.get_player():
				game.get_player().dano_player(dano, get_global_position(), filename)
	pass

func dano(valor):
	vida = vida - valor
	print(vida)
	if not fugindo:
		medo()
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func na_luz():
	if not iluminado:
		if randi()%2 == 0:
			direcao = 1
			direcao = -1
	iluminado = true
	pass

func no_escuro():
	iluminado = false
	pass

func random_negative():
	if randi()%25 == 0 and not preso:
		negativo = -negativo
	pass

func medo():
	fugindo = true
	var num = (randi()%4) + 1
	while(num == last_num):
		num = (randi()%4) + 1
	last_num = num
	destino = "spawnador" + String(num)
	pass