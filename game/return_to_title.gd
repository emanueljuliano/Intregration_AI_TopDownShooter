extends Control
	
func _ready():
	$music.play(game.music_time)
	$Screen/Options/NewGame.grab_focus()
	
func _on_Button_pressed():
	$FadeIn.show()
	$FadeIn.fade_in()


func _on_FadeIn_fade_finished():
	$FadeIn.hide()
	game.music_time = $music.get_playback_position()
	get_tree().change_scene("res://title_screen/TitleScreen.tscn")
