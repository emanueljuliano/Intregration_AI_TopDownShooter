extends Control
	
func _ready():
	$Menu/Decisions/Buttons/Continue.grab_focus()
	
func _on_Button_pressed():
	get_tree().change_scene("res://scenes/main.tscn")
