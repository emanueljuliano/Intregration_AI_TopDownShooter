extends Control

var dictionary = level_dialogs.level1
var page = 0
var voice = AudioStreamPlayer.new()
var character = 0

var shoot = false
var shoot_sound = AudioStreamPlayer.new()
var kill_bug = false
var button1_collor1 = "00ff3e"
var button1_collor2 = "008519"
var button2_collor1 = "00ff3e"
var button2_collor2 = "008519"


func _ready():
	check_level()
		
	page = 0
	self.add_child(voice)
	check_character(page)
	
	$Game_Player/Options/Button1.grab_focus()

func _process(delta):
	if character == 0:  # Professor
		if voice.get_playback_position() > 8.86:
			voice.play(rand_range(0.0, 8.86))
			
	if character == 1:  # IA
		if voice.get_playback_position() > 18.86:
			voice.play(rand_range(15.50, 18.86))
			
	if character == 2:  # Neeko
		if voice.get_playback_position() > 9.86:
			voice.play(rand_range(5.80, 9.86))

		
	if Input.is_action_pressed("direita") and ($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		$Game_Player/Options/Button2.grab_focus()
	if Input.is_action_pressed("esquerda") and ($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		$Game_Player/Options/Button1.grab_focus()


func check_character(page):	
	if dictionary[page]["tags"][0] == "professor":
		$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("00ff3e"))
		character = 0
		voice.stream = load("res://samples/bunch_of_voices.ogg")
		voice.pitch_scale = 1
		voice.play(rand_range(0.0, 8.86))
	
		
	if dictionary[page]["tags"][0] == "neeko":
		$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("009999"))
		character = 2
		voice.stream = load("res://samples/diferent_voices.ogg")
		voice.play(rand_range(5.80, 9.86))

		
	if dictionary[page]["tags"][0] == "IA":
		$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("ff0000"))
		character = 1
		voice.stream = load("res://samples/diferent_voices.ogg")
		voice.play(rand_range(15.50, 18.86))

		if shoot:
			voice.pitch_scale = 0
			$music.pitch_scale = 1
			var newfont = load('res://title_screen/Fonts/vt323_48.tres')
			$"Game_Player/Dialog/Terminal".set("custom_fonts/normal_font", newfont)
			shoot = false
		
	if dictionary[page]["tags"].size() > 1:
		$Game_Player/Dialog/Terminal.add_color_override("default_color", Color("00a999"))
		character = 0
		voice.stream = load("res://samples/bunch_of_voices.ogg")
		voice.play(rand_range(0.0, 8.86))

func check_level():
	if game.level == 2:
		dictionary = level_dialogs.level1
	if game.level == 3:
		dictionary = level_dialogs.level2
	if game.level == 4:
		dictionary = level_dialogs.level3
	if game.level == 5:
		dictionary = level_dialogs.level4
	if game.level == 6:
		dictionary = level_dialogs.level5
	if game.level == 7:
		dictionary = level_dialogs.level6
	if game.level == 8:
		dictionary = level_dialogs.level7
	if game.level == 9:
		dictionary = level_dialogs.level8
	if game.level == 10:
		dictionary = last_dialog.dialog
	
	
func _on_Terminal_ready():
	check_level()
	
	$Game_Player/Dialog/Terminal.set_bbcode(dictionary[page]["text"])
	$Game_Player/Dialog/Terminal.set_visible_characters(0)


func _on_Timer_timeout():
	$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_visible_characters()+1)
	if($Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count()):
		voice.stop()
		$Game_Player/Options/Button1/option1.set_visible_characters($Game_Player/Options/Button1/option1.get_visible_characters()+1)
		if(dictionary[page]["links"].size() > 1):
			$Game_Player/Options/Button2/option2.set_visible_characters($Game_Player/Options/Button2/option2.get_visible_characters()+1)
		
		
#Button 1 Action:

func _on_option1_ready():
	$Game_Player/Options/Button1/option1.set_bbcode(dictionary[page]["links"][0]["name"])
	$Game_Player/Options/Button1/option1.set_visible_characters(0)
		
func _on_Button1_pressed():
				
	if $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		
		if not "END" in dictionary[page]["links"][0]["link"]:
				
			if dictionary[page]["links"][0]["link"] == "Shoot" or dictionary[page]["links"][0]["link"] == "The stranger voice" or dictionary[page]["links"][0]["link"] == ":)":
				self.add_child(shoot_sound)
				shoot_sound.stream = load("res://samples/explosion.wav")
				shoot_sound.play(0.0)
				
				var newfont = load('res://title_screen/Fonts/miltown2_30.tres')
				$"Game_Player/Dialog/Terminal".set("custom_fonts/normal_font", newfont)
				
				voice.pitch_scale = 10
				$music.pitch_scale = 10
				if dictionary[page]["links"][0]["link"] != ":)":
					shoot = true
				
			page  = dictionary[page]["links"][0]["pid"]
			page = int(page) - 1
				
			if dictionary[page]["links"].size() > 1:

				if dictionary[page]["links"][1]["link"] == "Shoot" or dictionary[page]["links"][1]["name"] == "Kill the last bug":
					button2_collor1 = "ff0000"
					button2_collor2 = "850404"
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("850404"))
				
				elif dictionary[page]["links"][0]["name"] == "The stranger voice":
					button1_collor1 = "ff0000"
					button1_collor2 = "850404"
					button2_collor1 = "009999"
					button2_collor2 = "005e5e"
					$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("ff0000"))
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("005e5e"))
				else:
					button1_collor1 = "00ff3e"
					button1_collor2 = "008519"
					button2_collor1 = "00ff3e"
					button2_collor2 = "008519"
					$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
			else:
					button1_collor1 = "00ff3e"
					button1_collor2 = "008519"
					button2_collor1 = "00ff3e"
					button2_collor2 = "008519"
					$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
				
			if dictionary[page]["links"][0]["link"] == "Shoot":
				button1_collor1 = "ff0000"
				button1_collor2 = "850404"
				$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("ff0000"))
				
			if dictionary[page].has("tags"):
				check_character(page)
			
			voice.play(23.44)
			
			$Game_Player/Dialog/Terminal.set_bbcode(dictionary[page]["text"])
			$Game_Player/Dialog/Terminal.set_visible_characters(0)
			
			$Game_Player/Options/Button1/option1.set_bbcode(dictionary[page]["links"][0]["name"])
			$Game_Player/Options/Button1/option1.set_visible_characters(0)
			
			$Game_Player/Options/Button2/option2.set_visible_characters(0)
			if(dictionary[page]["links"].size() > 1):
				$Game_Player/Options/Button2.show()
				$Game_Player/Options/Button2/option2.set_bbcode(dictionary[page]["links"][1]["name"])
			else:
				$Game_Player/Options/Button2.hide()
				
		else:
			game.Continue()

	else:
		$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_total_character_count())

# Button1 Style:

func _on_Button1_focus_entered():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color(button1_collor1))
func _on_option1_mouse_entered():
	$Game_Player/Options/Button1.grab_focus()
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color(button1_collor1))
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color(button1_collor2))
	
func _on_option1_gui_input(event):
	if Input.is_action_pressed("clickE") and $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		_on_Button1_pressed()
		
func _on_Button1_focus_exited():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color(button1_collor2))
func _on_option1_mouse_exited():
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color(button1_collor2))


# Button 2 Action:

func _on_Button2_pressed():
	$Game_Player/Options/Button1.grab_focus()
	if $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		if dictionary[page]["links"].size() > 1:
			
			if(dictionary[page]["links"][1]["link"] == "Shoot" or dictionary[page]["links"][1]["link"] == "Neeko" 
			or dictionary[page]["links"][1]["link"] == "neeko2" or dictionary[page]["links"][1]["link"] == "Kill the last bug"):
				self.add_child(shoot_sound)
				shoot_sound.stream = load("res://samples/explosion.wav")
				shoot_sound.play(0.0)
				
				var newfont = load('res://title_screen/Fonts/miltown2_30.tres')
				$"Game_Player/Dialog/Terminal".set("custom_fonts/normal_font", newfont)
				
				shoot = true
				voice.pitch_scale = 10
				$music.pitch_scale = 10
				
			
			page  = dictionary[page]["links"][1]["pid"]
			page = int(page) - 1
			
			if dictionary[page]["links"].size() > 1:
				if dictionary[page]["links"][1]["link"] == "Shoot" or dictionary[page]["links"][1]["name"] == "Kill the last bug":
					button2_collor1 = "ff0000"
					button2_collor2 = "850404"
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("850404"))
				
				elif dictionary[page]["links"][0]["name"] == "The stranger voice":
					button1_collor1 = "ff0000"
					button1_collor2 = "850404"
					button2_collor1 = "009999"
					button2_collor2 = "005e5e"
					$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("ff0000"))
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("005e5e"))
				else:
					button1_collor1 = "00ff3e"
					button1_collor2 = "008519"
					button2_collor1 = "00ff3e"
					button2_collor2 = "008519"
					$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
			else:
					button1_collor1 = "00ff3e"
					button1_collor2 = "008519"
					button2_collor1 = "00ff3e"
					button2_collor2 = "008519"
					$Game_Player/Options/Button1/option1.add_color_override("default_color", Color("00ff3e"))
					$Game_Player/Options/Button2/option2.add_color_override("default_color", Color("008519"))
					
			if dictionary[page].has("tags"):
				check_character(page)
			voice.play(23.44)
			
			$Game_Player/Dialog/Terminal.set_bbcode(dictionary[page]["text"])
			$Game_Player/Dialog/Terminal.set_visible_characters(0)
			
			$Game_Player/Options/Button1/option1.set_bbcode(dictionary[page]["links"][0]["name"])
			$Game_Player/Options/Button1/option1.set_visible_characters(0)
			
			$Game_Player/Options/Button2/option2.set_visible_characters(0)
			if dictionary[page]["links"].size() > 1:
				$Game_Player/Options/Button2.show()
				$Game_Player/Options/Button2/option2.set_bbcode(dictionary[page]["links"][1]["name"])
			else:
				$Game_Player/Options/Button2.hide()
				
				
	else:
		$Game_Player/Dialog/Terminal.set_visible_characters($Game_Player/Dialog/Terminal.get_total_character_count())
	
func _on_option2_ready():
	if(dictionary[page]["links"].size() > 1):
		$Game_Player/Options/Button2/option2.set_bbcode(dictionary[page]["links"][1]["name"])
		
	$Game_Player/Options/Button2/option2.set_visible_characters(0)
	
# Button 2 Style:

func _on_Button2_focus_entered():
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color(button2_collor1))
func _on_option2_mouse_entered():
	$Game_Player/Options/Button2.grab_focus()
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color(button2_collor1))
	$Game_Player/Options/Button1/option1.add_color_override("default_color", Color(button2_collor2))
	
func _on_option2_gui_input(event):
	if Input.is_action_pressed("clickE") and $Game_Player/Dialog/Terminal.get_visible_characters() > $Game_Player/Dialog/Terminal.get_total_character_count():
		_on_Button2_pressed()
	
func _on_Button2_focus_exited():
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color(button2_collor2))
func _on_option2_mouse_exited():
	$Game_Player/Options/Button2/option2.add_color_override("default_color", Color(button2_collor2))


