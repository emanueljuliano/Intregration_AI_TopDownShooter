extends Control

var cause_text = 'Doctor'

func _ready():
	if game.last_enemy.right(13) == 'margaret.tscn':
		cause_text = 'Margaret the Mariposa'
	if game.last_enemy.right(13) == 'larissa_cabeca.tscn':
		cause_text = 'Larissa the Lacraia'
	if game.last_enemy.right(13) == 'monica.tscn':
		cause_text = 'Monica the Mosca'
	if game.last_enemy.right(13) == 'antony.tscn':
		cause_text = 'Antony the Ant'
	if game.last_enemy.right(13) == 'bebel.tscn':
		cause_text = 'Bebel the Bee'
	if game.last_enemy.right(13) == 'beto.tscn':
		cause_text = 'Beto the Besouro'
		
		
	$Menu/Decisions/Buttons/Continue.grab_focus()
	$Menu/Decisions/Buttons/Continue/upgrade.add_color_override("font_color", Color("00ff3e"))
	
	$Menu/Decisions/cause.set_bbcode("Last encounter: " + cause_text)
	$Menu/Decisions/cause.set_visible_characters(0)
	
	$Menu/Decisions/kill.set_bbcode("You killed: " + str(game.inimigos_mortos) + " bugs")
	$Menu/Decisions/kill.set_visible_characters(0)

	$Menu/Decisions/exist_time.set_bbcode("You lived for: " + str(int(game.exist_time) / 60) + " minutes")
	$Menu/Decisions/exist_time.set_visible_characters(0)

	$Menu/Decisions/shoots.set_bbcode("You shoot: " + str(game.num_shoots) + " bullets")
	$Menu/Decisions/shoots.set_visible_characters(0)

	$Menu/Decisions/dashs.set_bbcode("You dash: " + str(game.num_dashs) + " times")
	$Menu/Decisions/dashs.set_visible_characters(0)

	$Menu/Decisions/version.set_bbcode("Version: " + str(game.level) + "." + str(game.deaths))
	$Menu/Decisions/version.set_visible_characters(0)
	
	game.last_enemy = 'Doctor'
	game.inimigos_mortos = 0
	game.exist_time = 0
	game.num_shoots = 0
	game.num_dashs = 0
	game.save_game()
	

func _process(delta):
	if Input.is_action_pressed("direita"):
		$Menu/Decisions/Buttons/Exit.grab_focus()
	if Input.is_action_pressed("esquerda"):
		$Menu/Decisions/Buttons/Continue.grab_focus()


func _on_Timer_timeout():
	$Menu/Decisions/cause.set_visible_characters($Menu/Decisions/cause.get_visible_characters()+1)
	$Menu/Decisions/kill.set_visible_characters($Menu/Decisions/kill.get_visible_characters()+1)
	$Menu/Decisions/exist_time.set_visible_characters($Menu/Decisions/exist_time.get_visible_characters()+1)
	$Menu/Decisions/shoots.set_visible_characters($Menu/Decisions/shoots.get_visible_characters()+1)
	$Menu/Decisions/dashs.set_visible_characters($Menu/Decisions/dashs.get_visible_characters()+1)
	$Menu/Decisions/version.set_visible_characters($Menu/Decisions/version.get_visible_characters()+1)

	
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


func _on_Continue_pressed():
	if $Menu/Decisions/cause.get_visible_characters() > $Menu/Decisions/cause.get_total_character_count():
		game.Continue()
	else:
		$Menu/Decisions/cause.set_visible_characters($Menu/Decisions/cause.get_total_character_count())
		$Menu/Decisions/kill.set_visible_characters($Menu/Decisions/kill.get_total_character_count())
		$Menu/Decisions/exist_time.set_visible_characters($Menu/Decisions/exist_time.get_total_character_count())
		$Menu/Decisions/shoots.set_visible_characters($Menu/Decisions/shoots.get_total_character_count())
		$Menu/Decisions/dashs.set_visible_characters($Menu/Decisions/dashs.get_total_character_count())
		$Menu/Decisions/version.set_visible_characters($Menu/Decisions/version.get_total_character_count())

func _on_Exit_pressed():
	if $Menu/Decisions/cause.get_visible_characters() > $Menu/Decisions/cause.get_total_character_count():
		get_tree().change_scene("res://title_screen/TitleScreen.tscn")
	else:
		$Menu/Decisions/cause.set_visible_characters($Menu/Decisions/cause.get_total_character_count())
		$Menu/Decisions/kill.set_visible_characters($Menu/Decisions/kill.get_total_character_count())
		$Menu/Decisions/exist_time.set_visible_characters($Menu/Decisions/exist_time.get_total_character_count())
		$Menu/Decisions/shoots.set_visible_characters($Menu/Decisions/shoots.get_total_character_count())
		$Menu/Decisions/dashs.set_visible_characters($Menu/Decisions/dashs.get_total_character_count())
		$Menu/Decisions/version.set_visible_characters($Menu/Decisions/version.get_total_character_count())
