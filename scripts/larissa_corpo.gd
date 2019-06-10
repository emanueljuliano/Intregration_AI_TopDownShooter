extends KinematicBody2D

# Declare member variables here. Examples:
var proximo_segmento
export (int) var segmento

var avanco = 800
var curva = 150
var angulo
var distancia = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	$anim.play("idle")
	if segmento == get_parent().segmentos:
		get_node("sprite").set_texture(load("res://sprites/Artesanal/Larissa/cabeca.png"))
		get_node("sprite").get_node("Sprite").set_visible(true)
		get_node("sprite").get_node("Sprite2").set_visible(true)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().vida <= 0:
		remove_from_group(game.INIMIGO)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(2, false)
		set_collision_mask_bit(2, false)
		get_node("sprite").visible = false
	proximo_segmento = get_parent().get_child(segmento - 1)
	angulo = proximo_segmento.angulo - 90
	if proximo_segmento:
		look_at(proximo_segmento.get_global_position())
	pass


func _physics_process(delta):
	if proximo_segmento:
		if get_global_position().distance_to(proximo_segmento.get_global_position()) > distancia:
			move_and_slide(((get_node("frente").get_global_position() - get_global_position()) * avanco) + ((get_node("lado").get_global_position() - get_global_position()) * sin(deg2rad(angulo)) * curva))
	
	
	pass

func dano(valor):
	get_parent().vida = get_parent().vida - valor/2
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass
