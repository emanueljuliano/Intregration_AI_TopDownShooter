extends Button

func _on_NewGame_pressed():
	game.load_game()
	get_tree().change_scene("res://scenes/main.tscn")