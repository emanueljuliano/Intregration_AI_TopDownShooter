extends Node2D

var ativo = false

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		get_tree().change_scene("res://title_screen/TitleScreen.tscn")

func _ready():
	pass

func _process(delta):
	if $camera1.position.y < 8100:
		$camera1.position.y += delta*100

func _on_centipeta_ready():
	pass # Replace with function body.
