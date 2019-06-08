extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("musica").play(game.music_time)
	game.inimigos_mortos = 0
	if game.auxiliar == 4:
		game.get_player().iluminar= true
		get_node("spawner").ativado = false
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if game.auxiliar == 4 and game.inimigos_mortos == 5:
		get_node("PORTA2").aberta = true
	
	
	#REPETIR FASE SE MORRER
	if game.get_player().vida < game.get_player().vida_max:
		if game.auxiliar == 2:
			game.auxiliar = 3
		elif game.auxiliar == 3:
			game.auxiliar = 4
		get_tree().change_scene("res://scenes/tutorial/tutorial5.tscn")
	
	pass
