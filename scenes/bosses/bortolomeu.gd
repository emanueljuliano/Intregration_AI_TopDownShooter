extends KinematicBody2D

var avanco = 500
var iluminado = false
var vida = 40

export var atacar_vagner = false
export var qual_vagner = ""

var dano = 10

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
		remove_from_group(game.INIMIGO)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(0, false)
		set_collision_mask_bit(0, false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")
	if iluminado:
		look_at(game.get_player().get_position())
	elif atacar_vagner and game.get_main().has_node(qual_vagner):
		if game.get_main().get_node(qual_vagner).aceso:
			look_at(game.get_main().get_node(qual_vagner).get_global_position())
		
		
func _physics_process(delta):
	if vida > 0:
		if iluminado:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * avanco)
			if get_slide_count() > 0:
				if get_slide_collision(0).collider == game.get_player():
					game.get_player().dano_player(dano, get_global_position(), filename)
		elif atacar_vagner and game.get_main().has_node(qual_vagner):
			if game.get_main().get_node(qual_vagner).aceso and get_global_position().distance_to(game.get_main().get_node(qual_vagner).get_global_position()) > 50:
				move_and_slide((get_node("frente").get_global_position() - get_global_position()) * avanco)
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