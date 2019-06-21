extends Button

func _on_NewGame_pressed():
	game.max_level = max(game.level, game.max_level)
	game.level = -1
	get_tree().change_scene("res://scenes/main.tscn")