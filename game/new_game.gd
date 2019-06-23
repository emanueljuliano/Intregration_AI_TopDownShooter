extends Button


func _on_NewGame_pressed():
	game.deaths = 0
	game.level = 0
	game.max_level = 0
	dict_dialog.tutorial_scene = 1
	dict_dialog.id = 4 
	game.save_game()
	get_tree().change_scene("res://scenes/dialogue1.tscn")
