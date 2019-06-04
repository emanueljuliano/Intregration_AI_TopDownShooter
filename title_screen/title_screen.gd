extends Control

var scene_path_to_load
var data = []

# Called when the node enters the scene tree for the first time.
func _ready():
	$musica.play(game.music_time)
	game.load_game()
		
	$Menu/VersionLabel.set_text('Version ' + str(game.level) + '.' + str(game.deaths) +
								'\nManel e Marrocos Studio')
	$Menu/CenterRow/Buttons/ContinueButton.grab_focus()
	
	for button in $Menu/CenterRow/Buttons.get_children():
		button.connect("pressed", self, "_on_Button_pressed", [button.scene_to_load])
		

func _on_Button_pressed(scene_to_load):
	game.music_time = $musica.get_playback_position()
	scene_path_to_load = scene_to_load	
	$FadeIn.show()
	$FadeIn.fade_in()

func _on_FadeIn_fade_finished():
	$FadeIn.hide()
	get_tree().change_scene(scene_path_to_load)
