extends Position2D

# Declare member variables here. Examples:
export (String) var camera_atual
export (String) var camera_destino
export (String) var destino
export (bool) var trocar_fase
export (String) var nova_fase

export (bool) var aberta

# Called when the node enters the scene tree for the first time.
func _ready():
	if aberta:
		get_node("Sprite").set_modulate(Color(0,0,0,1))
	else:
		get_node("Sprite").set_modulate(Color(1,1,1,0))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if aberta:
		get_node("Sprite").set_modulate(Color(0,0,0,1))
	else:
		get_node("Sprite").set_modulate(Color(1,1,1,0))
	pass


func _on_Area2D_body_entered(body):
	if body == game.get_player() and aberta:
		trocar_room()
	pass # Replace with function body.

func trocar_room():
	if trocar_fase:
		get_tree().change_scene(nova_fase)
	else:
		get_tree().get_root().get_node("main").get_node(camera_destino)._set_current(true)
		get_tree().get_root().get_node("main").get_node(camera_atual)._set_current(false)
		game.get_player().set_global_position(get_tree().get_root().get_node("main").get_node(destino).get_global_position())
	pass