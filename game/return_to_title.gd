extends Control
	
func _ready():
	$Screen/Options/NewGame.grab_focus()
	
func _on_Button_pressed():
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")
