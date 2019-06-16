extends KinematicBody2D

var vel = 300
var vida = 80
var dano = 10

export var ativo = true

var death = 0


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
			
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(0, false)
		set_collision_mask_bit(0, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")
		
	if ativo:
		look_at(game.get_player().get_position())

func _physics_process(delta):
	if vida > 0 and ativo:
		move_and_slide((get_node("frente").get_global_position() - get_global_position()) * vel)
		if get_slide_count() > 0:
			if get_slide_collision(0).collider == game.get_player():
				game.get_player().dano_player(dano, get_global_position(), filename)
	pass

func dano(valor):
	vida = vida - valor
	ativo = true
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass