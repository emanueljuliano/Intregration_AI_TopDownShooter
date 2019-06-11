extends Button

func _on_NewGame_pressed():
	game.load_game()
	game.Continue()