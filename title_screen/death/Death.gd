extends Control
	
func _ready():
	$Menu/Decisions/Buttons/Continue.grab_focus()
	$Menu/Decisions/Buttons/Continue/upgrade.add_color_override("font_color", Color("00ff3e"))

func _process(delta):
	if Input.is_action_pressed("direita"):
		$Menu/Decisions/Buttons/Exit.grab_focus()
	if Input.is_action_pressed("esquerda"):
		$Menu/Decisions/Buttons/Continue.grab_focus()
	
# Continue Button:
func _on_Continue_focus_entered():
	$Menu/Decisions/Buttons/Continue/upgrade.add_color_override("font_color", Color("00ff3e"))
func _on_Continue_mouse_entered():
	$Menu/Decisions/Buttons/Continue.grab_focus()
	$Menu/Decisions/Buttons/Continue/upgrade.add_color_override("font_color", Color("00ff3e"))
func _on_Continue_focus_exited():
	$Menu/Decisions/Buttons/Continue/upgrade.add_color_override("font_color", Color("008519"))
func _on_Continue_mouse_exited():
	$Menu/Decisions/Buttons/Continue/upgrade.add_color_override("font_color", Color("008519"))


# Exit Button:
func _on_Exit_focus_entered():
	$Menu/Decisions/Buttons/Exit/exit.add_color_override("font_color", Color("00ff3e"))
func _on_Exit_mouse_entered():
	$Menu/Decisions/Buttons/Exit.grab_focus()
	$Menu/Decisions/Buttons/Exit/exit.add_color_override("font_color", Color("00ff3e"))
func _on_Exit_focus_exited():
	$Menu/Decisions/Buttons/Exit/exit.add_color_override("font_color", Color("008519"))
func _on_Exit_mouse_exited():
	$Menu/Decisions/Buttons/Exit/exit.add_color_override("font_color", Color("008519"))




