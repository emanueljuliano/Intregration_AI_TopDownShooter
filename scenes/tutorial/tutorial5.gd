extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("musica").play(game.music_time)
	game.inimigos_mortos = 0
	if game.auxiliar == 4:
		game.get_player().iluminar= true
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_node("spawner").ativado:
		if game.get_player().lanterna:
			get_node("spawner").ativado = false
	
	if game.auxiliar == 4 and game.inimigos_mortos == 5 and not get_node("spawner").ativado:
		get_node("PORTA2").aberta = true
	
	
	#REPETIR FASE SE MORRER
	if game.get_player().vida < game.get_player().vida_max:
		if game.auxiliar == 2:
			game.auxiliar = 3
			dict_dialog.key = "tutorial5.1"
			get_tree().change_scene("res://scenes/tutorial/litle_deaths.tscn")
		elif game.auxiliar == 3:
			game.auxiliar = 4
			dict_dialog.tutorial_scene = 4
			get_tree().change_scene("res://scenes/tutorial/death_tutorial.tscn")

		else:
			dict_dialog.key = "tutorial5.2"
			get_tree().change_scene("res://scenes/tutorial/litle_deaths.tscn")
	
	pass
