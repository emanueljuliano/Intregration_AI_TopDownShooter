extends Control

var jokes = small_dialogs.vida
var key = "tutorial2"
var voice = AudioStreamPlayer.new()

func _ready():
	self.add_child(voice)
	voice.stream = load("res://samples/bunch_of_voices.ogg")
	voice.play(rand_range(0.0, 8.86))
	voice.set_volume_db(-6)
	
	$Game_Player/Options/Button1.grab_focus()

func _process(delta):
	if voice.get_playback_position() > 8.86:
		voice.play(rand_range(0.0, 8.86))
			
		
	if Input.is_action_pressed("direita") and ($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		$Game_Player/Options/Button2.grab_focus()
	if Input.is_action_pressed("esquerda") and ($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		$Game_Player/Options/Button1.grab_focus()


func _on_Terminal_ready():
	game.level = 6
	if game.level ==  1:
		jokes = small_dialogs.vida + small_dialogs.shock + small_dialogs.monica + small_dialogs.beto + small_dialogs.greg
	if game.level ==  2:
		jokes = small_dialogs.monica + small_dialogs.beto + small_dialogs.greg + small_dialogs.bebel
	if game.level ==  3:
		jokes = small_dialogs.vagner + small_dialogs.margaret + small_dialogs.monica + small_dialogs.shock
	if game.level ==  4:
		jokes = small_dialogs.larissa + small_dialogs.trap + small_dialogs.vagner + small_dialogs.margaret + small_dialogs.monica + small_dialogs.barbara
	if game.level ==  5:
		jokes = small_dialogs.larissa + small_dialogs.shock + small_dialogs.barbara + small_dialogs.vida
	if game.level ==  6:
		jokes = small_dialogs.larissa + small_dialogs.barbara + small_dialogs.monica + small_dialogs.bebel_mini + small_dialogs.bebel_mini_boss + small_dialogs.big_larissa_mini_boss + small_dialogs.trap
	if game.level ==  7:
		jokes = small_dialogs.vida
	if game.level ==  8:
		jokes = small_dialogs.vida
	
	randomize()
	var text = jokes[rand_range(0, jokes.size())]
	$Game_Player/Dialog/Terminal.set_bbcode(text)
	$Game_Player/Dialog/Terminal.set_visible_characters(0)


func _on_Timer_timeout():
	$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_visible_characters()+1)
	if($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		voice.stop()
		$Game_Player/Options/Button1/option1.set_visible_characters($Game_Player/Options/Button1/option1.get_visible_characters()+1)
		
		
#Button 1 Action:

func _on_option1_ready():
	$Game_Player/Options/Button1/option1.set_bbcode("...")
	$Game_Player/Options/Button1/option1.set_visible_characters(0)
		
func _on_Button1_pressed():
				
	if $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		get_tree().change_scene("res://scenes/death/Death.tscn")		
			

	else:
		$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_total_character_count())


# Button1 Style:

func _on_Button1_focus_entered():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
func _on_option1_mouse_entered():
	$Game_Player/Options/Button1.grab_focus()
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
	
func _on_option1_gui_input(event):
	if Input.is_action_pressed("clickE") and $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		_on_Button1_pressed()
		
func _on_Button1_focus_exited():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("008519"))
func _on_option1_mouse_exited():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("008519"))


	

