extends Button

func _on_NewGame_pressed():
	get_tree().paused = not get_tree().paused
	visible = not visible