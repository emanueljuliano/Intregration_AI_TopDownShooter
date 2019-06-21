extends "res://title_screen/buttons/MenuButton.gd"



func _on_QuitButton_pressed():
	game.save_game()
	get_tree().quit()
