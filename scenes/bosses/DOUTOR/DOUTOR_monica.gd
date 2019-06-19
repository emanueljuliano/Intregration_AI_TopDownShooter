extends KinematicBody2D

# GIRO 2000 = ORBITAR
# GIRO 1000 = GIRAR E AVANCAR
var giro = 1000
var avanco = 100

var vida = 100
var dano = 10

var atirar = true
var reload = 0.0
var tempo = 1.0
var pre_tiro = preload("res://scenes/bosses/DOUTOR/DOUTOR_tiro.tscn")

export var ativo = true

var death = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if reload > 0:
		reload = reload - delta
	atirar()
	
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
		
	if ativo:
		look_at(game.get_player().get_position())

func _physics_process(delta):
	if vida > 0 and ativo:
		if get_global_position().distance_to(game.get_player().get_global_position()) > 200:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * 200)
		
		
		move_and_slide((get_node("frente").get_global_position() - get_global_position()) * avanco)
		move_and_slide((get_node("lado").get_global_position() - get_position()) * giro)
		if get_slide_count() > 0:
			if get_slide_collision(0).collider == game.get_player():
				game.get_player().dano_player(dano, get_global_position(), filename)
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func atirar():
	if atirar:
		if reload <= 0:
			var tiro = pre_tiro.instance()
			tiro.set_global_position(get_node("mira").get_global_position())
			get_owner().add_child(tiro)
			tiro.set_rotation(get_rotation())
			get_node("atirar").play()
			game.get_camera().get_node("ScreenShake").start()
			reload = tempo