extends Position2D

# Declare member variables here. Examples:
export (String) var camera_atual
export (String) var camera_destino
export (String) var destino
export (bool) var trocar_fase
export (String) var nova_fase

export (bool) var aberta
export (Array, String) var abrir_com_inimigos

# Called when the node enters the scene tree for the first time.
func _ready():
	
	get_node("Sprite").set_modulate(game.get_main().get_node("TileMap").modulate)
	
	if aberta:
		get_node("Sprite2").set_visible(true)
		#get_node("Sprite1").set_modulate(Color(0,0,0,1))
	else:
		get_node("Sprite2").set_visible(false)
		#get_node("Sprite").set_modulate(game.get_main().get_node("TileMap").modulate)
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("Sprite").set_modulate(game.get_main().get_node("TileMap").modulate)
	
	if len(abrir_com_inimigos) > 0:
		var i = 0
		var existe = false
		while i < len(abrir_com_inimigos):
			if game.get_main().has_node(abrir_com_inimigos[i]):
				existe = true
			i = i + 1
		aberta = not existe
	if aberta:
		get_node("Sprite2").set_visible(true)
		#get_node("Sprite").set_modulate(Color(0,0,0,1))
	else:
		get_node("Sprite2").set_visible(false)
		#get_node("Sprite").set_modulate(game.get_main().get_node("TileMap").modulate)
	pass


func _on_Area2D_body_entered(body):
	if body == game.get_player() and aberta:
		trocar_room()
	pass # Replace with function body.

func trocar_room():
	if trocar_fase:
		game.level += 1
		game.music_time = game.get_main().get_node("musica").get_playback_position()
		get_tree().change_scene(nova_fase)
	else:
		if camera_destino != camera_atual:
			if game.get_player().has_node("camera1") and (camera_destino == "camera1" or camera_atual == "camera1"):
				if camera_destino == "camera1":
					game.get_player().get_node(camera_destino)._set_current(true)
					game.get_main().get_node(camera_atual)._set_current(false)
				if camera_atual == "camera1":
					game.get_main().get_node(camera_destino)._set_current(true)
					game.get_player().get_node(camera_atual)._set_current(false)
			else:
				game.get_main().get_node(camera_destino)._set_current(true)
				game.get_main().get_node(camera_atual)._set_current(false)
		
		game.get_player().set_global_position(game.get_main().get_node(destino).get_global_position())
	pass