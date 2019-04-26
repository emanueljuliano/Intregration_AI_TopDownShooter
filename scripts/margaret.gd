extends KinematicBody2D

var avanco = 500
var iluminado = false
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
		remove_from_group(game.INIMIGO)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(0, false)
		set_collision_mask_bit(0, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")
	if iluminado:
		look_at(game.get_player().get_position())
		
		
func _physics_process(delta):
	if vida > 0:
		if iluminado:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * avanco)
			if get_slide_count() > 0:
				if get_slide_collision(0).collider == game.get_player():
					game.get_player().dano_player(dano, get_global_position())
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func na_luz():
	iluminado = true
	pass

func no_escuro():
	iluminado = false
	pass