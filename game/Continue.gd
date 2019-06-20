extends Control

func _ready():
	$Back.grab_focus()
func _on_NewGame_pressed():
	game.load_game()
	game.Continue()

func _on_continue1_pressed():
	pass # Replace with function body.


func _on_continue2_pressed():
	pass # Replace with function body.


func _on_continue3_pressed():
	pass # Replace with function body.


func _on_continue4_pressed():
	pass # Replace with function body.


func _on_continue5_pressed():
	pass # Replace with function body.


func _on_continue7_pressed():
	pass # Replace with function body.


func _on_continue8_pressed():
	pass # Replace with function body.


func _on_continue9_pressed():
	pass # Replace with function body.


func _on_Back_pressed():
	pass # Replace with function body.
	

# New Game Button:
func _on_continue1_focus_entered():
	$continue1/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue1_mouse_entered():
	$continue1.grab_focus()
	$continue1/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue1_focus_exited():
	$continue1/text.add_color_override("font_color", Color("008519"))
func _on_continue1_mouse_exited():
	$continue1/text.add_color_override("font_color", Color("008519"))

# continue:
func _on_continue2_focus_entered():
	$continue2/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue2_mouse_entered():
	$continue2.grab_focus()
	$continue2/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue2_focus_exited():
	$continue2/text.add_color_override("font_color", Color("008519"))
func _on_continue2_mouse_exited():
	$continue2/text.add_color_override("font_color", Color("008519"))

# continue:
func _on_continue3_focus_entered():
	$continue3/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue3_mouse_entered():
	$continue3.grab_focus()
	$continue3/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue3_focus_exited():
	$continue3/text.add_color_override("font_color", Color("008519"))
func _on_continue3_mouse_exited():
	$continue3/text.add_color_override("font_color", Color("008519"))
	
# continue:
func _on_continue4_focus_entered():
	$continue4/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue4_mouse_entered():
	$continue4.grab_focus()
	$continue4/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue4_focus_exited():
	$continue4/text.add_color_override("font_color", Color("008519"))
func _on_continue4_mouse_exited():
	$continue4/text.add_color_override("font_color", Color("008519"))

# continue:
func _on_continue5_focus_entered():
	$continue5/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue5_mouse_entered():
	$continue5.grab_focus()
	$continue5/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue5_focus_exited():
	$continue5/text.add_color_override("font_color", Color("008519"))
func _on_continue5_mouse_exited():
	$continue5/text.add_color_override("font_color", Color("008519"))
	
# continue:
func _on_continue6_focus_entered():
	$continue6/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue6_mouse_entered():
	$continue6.grab_focus()
	$continue6/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue6_focus_exited():
	$continue6/text.add_color_override("font_color", Color("008519"))
func _on_continue6_mouse_exited():
	$continue6/text.add_color_override("font_color", Color("008519"))
	
# continue:
func _on_continue7_focus_entered():
	$continue7/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue7_mouse_entered():
	$continue7.grab_focus()
	$continue7/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue7_focus_exited():
	$continue7/text.add_color_override("font_color", Color("008519"))
func _on_continue7_mouse_exited():
	$continue7/text.add_color_override("font_color", Color("008519"))
	
# continue:
func _on_continue8_focus_entered():
	$continue8/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue8_mouse_entered():
	$continue8.grab_focus()
	$continue8/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue8_focus_exited():
	$continue8/text.add_color_override("font_color", Color("008519"))
func _on_continue8_mouse_exited():
	$continue8/text.add_color_override("font_color", Color("008519"))
	
# continue:
func _on_continue9_focus_entered():
	$continue9/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue9_mouse_entered():
	$continue9.grab_focus()
	$continue9/text.add_color_override("font_color", Color("00ff3e"))
func _on_continue9_focus_exited():
	$continue9/text.add_color_override("font_color", Color("008519"))
func _on_continue9_mouse_exited():
	$continue9/text.add_color_override("font_color", Color("008519"))
	
# B Button:
func _on_Back_focus_entered():
	$Back/text.add_color_override("font_color", Color("00ff3e"))
func _on_Back_mouse_entered():
	$Back.grab_focus()
	$Back/text.add_color_override("font_color", Color("00ff3e"))
func _on_Back_focus_exited():
	$Back/text.add_color_override("font_color", Color("008519"))
func _on_Back_mouse_exited():
	$Back/text.add_color_override("font_color", Color("008519"))

