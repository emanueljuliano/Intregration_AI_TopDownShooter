extends Button

func _on_NewGame_pressed():
	game.level = -1
	get_tree().change_scene("res://scenes/main.tscn")