extends "res://title_screen/buttons/MenuButton.gd"

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _on_InfiniteButton_focus_entered():
	get_node("res://title_screen/buttons/InfiniteButton.tscn").infinite.add_color_override("font_color", Color("00ff3e"))
	
func _on_Label_mouse_entered():
	get_node("res://title_screen/buttons/InfiniteButton.tscn").infinite.add_color_override("font_color", Color("00ff3e"))


func _on_Label_mouse_exited():
	pass # Replace with function body.


func _on_InfiniteButton_focus_exited():
	pass # Replace with function body.
