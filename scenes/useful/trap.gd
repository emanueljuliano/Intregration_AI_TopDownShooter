extends StaticBody2D

# Declare member variables here. Examples:
var pre_flecha = preload("res://scenes/useful/flecha.tscn")

export (bool) var automatico

export var tempo_atirar = 2
var tempo


# Called when the node enters the scene tree for the first time.
func _ready():
	tempo = tempo_atirar
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if tempo <= 0:
		tempo = tempo_atirar
		atirar_flecha()
	tempo = tempo - delta
	pass

func atirar_flecha():
	var flecha = pre_flecha.instance()
	flecha.set_global_position(get_node("spawner").get_global_position())
	flecha.set_rotation(get_rotation())
	game.get_main().add_child(flecha)
	pass
