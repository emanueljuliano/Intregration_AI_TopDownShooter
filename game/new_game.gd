extends Button


func _on_NewGame_pressed():
	game.deaths = 0
	game.level = 1
	game.save_game()
	get_tree().change_scene("res://scenes/main.tscn")
