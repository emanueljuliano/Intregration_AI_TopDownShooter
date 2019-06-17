extends KinematicBody2D

export var vel = 400
var distancia = 600

export var vida = 30
var dano = 40

var death = 0

export var ativo = true

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	look_at(game.get_player().get_position())
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if not game.get_player().dashando and get_global_position().distance_to(game.get_player().get_global_position()) > distancia:
		look_at(game.get_player().get_global_position())
	
	if vida <= 0:
		if death == 0:
			game.inimigos_mortos += 1
			death = 1
		
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(1, false)
		set_collision_mask_bit(1, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")

func _physics_process(delta):
	if vida > 0 and ativo:
		move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
		if get_slide_count() > 0:
			if get_slide_collision(0).collider.has_method("dano_player"):
				game.get_player().dano_player(dano, get_global_position(), filename)
				suicide()
			#elif get_slide_collision(0).collider.has_method("dano"):
			#	get_slide_collision(0).collider.dano(dano)
			if get_slide_collision(0).collider.filename == filename:
				look_at(game.get_player().get_global_position())
		#dano(vida)
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func suicide():
	set_process(false)
	set_physics_process(false)
	set_collision_layer_bit(1, false)
	set_collision_mask_bit(1, false)
	remove_from_group(game.INIMIGO)
	get_node("anim").play("morrer")