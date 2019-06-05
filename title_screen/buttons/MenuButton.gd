extends Button

export(String) var scene_to_load

	
func _on_ContinueButton_mouse_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_NewGameButton_mouse_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_OptionsButton_mouse_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_InfiniteButton_mouse_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_QuitButton_mouse_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
	
	

func _on_ContinueButton_mouse_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_NewGameButton_mouse_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_OptionsButton_mouse_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_InfiniteButton_mouse_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_QuitButton_mouse_exited():
	$Label.add_color_override("font_color", Color("008519"))



func _on_NewGameButton_focus_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_ContinueButton_focus_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_OptionsButton_focus_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_QuitButton_focus_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
func _on_InfiniteButton_focus_entered():
	$Label.add_color_override("font_color", Color("00ff3e"))
	
	

func _on_NewGameButton_focus_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_ContinueButton_focus_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_OptionsButton_focus_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_QuitButton_focus_exited():
	$Label.add_color_override("font_color", Color("008519"))
func _on_InfiniteButton_focus_exited():
	$Label.add_color_override("font_color", Color("008519"))
