extends Button

export(String) var scene_to_load

func _on_NewGame_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
