extends KinematicBody2D

# GIRO 2000 = ORBITAR
# GIRO 1000 = GIRAR E AVANCAR
var giro = 800
var avanco = 800
var distancia = 1000

var vida = 2500
var dano = 10

var atacando = false
var tempo_giro = 5
var tempo_giro_max = 5
var tempo_ataque = 5
var tempo_ataque_max = 5

export var ativo = true

var death = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	tempo_giro_max = (randi()%6)+4
	tempo_ataque_max = (randi()%6)+4
	
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
		if not atacando:
			if tempo_giro > 0:
				tempo_giro = tempo_giro - delta
			else:
				tempo_ataque = tempo_ataque_max
				atacando = true
		if atacando:
			if tempo_ataque > 0:
				tempo_ataque = tempo_ataque - delta
			else:
				tempo_giro = tempo_giro_max
				atacando = false
		
		
	if ativo and ((not atacando) or (atacando and not game.get_player().dashando and get_global_position().distance_to(game.get_player().get_global_position()) > distancia)):
		look_at(game.get_player().get_global_position())

func _physics_process(delta):
	if vida > 0 and ativo:
		if atacando:
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * avanco)
		if not atacando:
			move_and_slide((get_node("lado").get_global_position() - get_position()) * giro)
			if get_global_position().distance_to(game.get_player().get_global_position()) > 200:
				move_and_slide((get_node("frente").get_global_position() - get_global_position()) * 200)
		if get_slide_count() > 0:
			if get_slide_collision(0).collider == game.get_player():
				game.get_player().dano_player(dano, get_global_position(), filename)
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass