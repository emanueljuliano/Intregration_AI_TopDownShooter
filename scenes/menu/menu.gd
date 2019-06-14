extends Control

func _ready():
	pause_mode = Node.PAUSE_MODE_PROCESS
	
	$Screen/Options/NewGame.grab_focus()
	$Screen/Options/NewGame.add_color_override("font_color", Color("00ff3e"))
	
	$music.play(game.music_time)

func _input(event):
	if event.is_action_pressed("ui_cancel"):
		$Screen/Options/NewGame.grab_focus()
		get_tree().paused = not get_tree().paused
		visible = not visible

func _process(delta):
	if Input.is_action_pressed("direita"):
		$Screen/Options/Back.grab_focus()
	if Input.is_action_pressed("esquerda"):
		$Screen/Options/NewGame.grab_focus()

# New Game Button:
func _on_NewGame_focus_entered():
	$Screen/Options/NewGame/text.add_color_override("font_color", Color("00ff3e"))
func _on_NewGame_mouse_entered():
	$Screen/Options/NewGame.grab_focus()
	$Screen/Options/NewGame/text.add_color_override("font_color", Color("00ff3e"))
func _on_NewGame_focus_exited():
	$Screen/Options/NewGame/text.add_color_override("font_color", Color("008519"))
func _on_NewGame_mouse_exited():
	$Screen/Options/NewGame/text.add_color_override("font_color", Color("008519"))


# Back Button:
func _on_Back_focus_entered():
	$Screen/Options/Back/text.add_color_override("font_color", Color("00ff3e"))
func _on_Back_mouse_entered():
	$Screen/Options/Back.grab_focus()
	$Screen/Options/Back/text.add_color_override("font_color", Color("00ff3e"))
func _on_Back_focus_exited():
	$Screen/Options/Back/text.add_color_override("font_color", Color("008519"))
func _on_Back_mouse_exited():
	$Screen/Options/Back/text.add_color_override("font_color", Color("008519"))
	
func _on_NewGame_pressed():
	get_tree().paused = not get_tree().paused
	visible = not visible

func _on_Back_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()


func _on_FadeIn_fade_finished():
	$FadeIn.hide()
	game.music_time = $music.get_playback_position() 
	get_tree().paused = not get_tree().paused
	visible = not visible
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")