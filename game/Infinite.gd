extends Button

func _on_NewGame_pressed():
	game.save_game()
	game.level = -1
	get_tree().change_scene("res://scenes/main.tscn")