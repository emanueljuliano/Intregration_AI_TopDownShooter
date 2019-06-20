extends Control

var level_path

func _ready():
	$Back.grab_focus()
	game.load_game()
	game.max_level = max(game.level, game.max_level)
	verify_level()
	
func verify_level():
	if game.max_level < 1:
		$continue1.hide()
	if game.max_level < 2:
		$continue2.hide()
	if game.max_level < 3:
		$continue3.hide()
	if game.max_level < 4:
		$continue4.hide()
	if game.max_level < 5:
		$continue5.hide()
	if game.max_level < 6:
		$continue6.hide()
	if game.max_level < 7:
		$continue7.hide()
	if game.max_level < 8:
		$continue8.hide()
	if game.max_level < 9:
		$continue9.hide()
	
# Choosing level

func _on_continue1_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 1
	level_path = "res://scenes/fases/fase1/fase1_1.tscn"

func _on_continue2_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 2
	level_path = "res://scenes/fases/fase1/fase1_4.tscn"

func _on_continue3_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 3
	level_path = "res://scenes/fases/fase1/boss1.tscn"

func _on_continue4_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 4
	level_path = "res://scenes/fases/fase1/fase1_2.tscn"

func _on_continue5_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 5
	level_path = "res://scenes/fases/fase1/fase1_5.tscn"


func _on_continue6_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 6
	level_path = "res://scenes/fases/fase1/boss3.tscn"

func _on_continue7_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 7
	level_path = "res://scenes/fases/fase1/fase1_3.tscn"

func _on_continue8_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 8
	level_path = "res://scenes/fases/fase 2/fase2_1.tscn"
	
func _on_continue9_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	game.level = 9
	level_path = "res://scenes/fases/fase1/boss2.tscn"

func _on_Back_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")
	

# New Game Button:
func _on_continue1_focus_entered():
	$continue1/text.add_color_override("font_color", Color("00ffb1"))
func _on_continue1_mouse_entered():
	$continue1.grab_focus()
	$continue1/text.add_color_override("font_color", Color("00ffb1"))
func _on_continue1_focus_exited():
	$continue1/text.add_color_override("font_color", Color("05543c"))
func _on_continue1_mouse_exited():
	$continue1/text.add_color_override("font_color", Color("05543c"))

# continue:
func _on_continue2_focus_entered():
	$continue2/text.add_color_override("font_color", Color("0093ff"))
func _on_continue2_mouse_entered():
	$continue2.grab_focus()
	$continue2/text.add_color_override("font_color", Color("0093ff"))
func _on_continue2_focus_exited():
	$continue2/text.add_color_override("font_color", Color("043a63"))
func _on_continue2_mouse_exited():
	$continue2/text.add_color_override("font_color", Color("043a63"))

# continue:
func _on_continue3_focus_entered():
	$continue3/text.add_color_override("font_color", Color("000aff"))
func _on_continue3_mouse_entered():
	$continue3.grab_focus()
	$continue3/text.add_color_override("font_color", Color("000aff"))
func _on_continue3_focus_exited():
	$continue3/text.add_color_override("font_color", Color("050965"))
func _on_continue3_mouse_exited():
	$continue3/text.add_color_override("font_color", Color("050965"))
	
# continue:
func _on_continue4_focus_entered():
	$continue4/text.add_color_override("font_color", Color("653b8f"))
func _on_continue4_mouse_entered():
	$continue4.grab_focus()
	$continue4/text.add_color_override("font_color", Color("653b8f"))
func _on_continue4_focus_exited():
	$continue4/text.add_color_override("font_color", Color("230046"))
func _on_continue4_mouse_exited():
	$continue4/text.add_color_override("font_color", Color("230046"))

# continue:
func _on_continue5_focus_entered():
	$continue5/text.add_color_override("font_color", Color("6a027a"))
func _on_continue5_mouse_entered():
	$continue5.grab_focus()
	$continue5/text.add_color_override("font_color", Color("6a027a"))
func _on_continue5_focus_exited():
	$continue5/text.add_color_override("font_color", Color("3d0046"))
func _on_continue5_mouse_exited():
	$continue5/text.add_color_override("font_color", Color("3d0046"))
	
# continue:
func _on_continue6_focus_entered():
	$continue6/text.add_color_override("font_color", Color("94032c"))
func _on_continue6_mouse_entered():
	$continue6.grab_focus()
	$continue6/text.add_color_override("font_color", Color("94032c"))
func _on_continue6_focus_exited():
	$continue6/text.add_color_override("font_color", Color("460014"))
func _on_continue6_mouse_exited():
	$continue6/text.add_color_override("font_color", Color("460014"))
	
# continue:
func _on_continue7_focus_entered():
	$continue7/text.add_color_override("font_color", Color("c8eb00"))
func _on_continue7_mouse_entered():
	$continue7.grab_focus()
	$continue7/text.add_color_override("font_color", Color("c8eb00"))
func _on_continue7_focus_exited():
	$continue7/text.add_color_override("font_color", Color("708204"))
func _on_continue7_mouse_exited():
	$continue7/text.add_color_override("font_color", Color("708204"))
	
# continue:
func _on_continue8_focus_entered():
	$continue8/text.add_color_override("font_color", Color("eb7400"))
func _on_continue8_mouse_entered():
	$continue8.grab_focus()
	$continue8/text.add_color_override("font_color", Color("eb7400"))
func _on_continue8_focus_exited():
	$continue8/text.add_color_override("font_color", Color("8e4600"))
func _on_continue8_mouse_exited():
	$continue8/text.add_color_override("font_color", Color("8e4600"))
	
# continue:
func _on_continue9_focus_entered():
	$continue9/text.add_color_override("font_color", Color("ff2200"))
func _on_continue9_mouse_entered():
	$continue9.grab_focus()
	$continue9/text.add_color_override("font_color", Color("ff2200"))
func _on_continue9_focus_exited():
	$continue9/text.add_color_override("font_color", Color("7b1000"))
func _on_continue9_mouse_exited():
	$continue9/text.add_color_override("font_color", Color("7b1000"))
	
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



func _on_FadeIn_fade_finished():
	$FadeIn.hide()
	game.music_time = $music.get_playback_position() 
	get_tree().change_scene(level_path)


