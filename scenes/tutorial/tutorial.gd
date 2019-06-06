extends Node2D

var tempo = 5
var spawnado = false
var pre_inimigo = preload("res://scenes/melee.tscn")


# Called when the node enters the scene tree for the first time.
func _ready():
	game.music_time = 0.0
	get_node("musica").play(game.music_time)
	game.inimigos_mortos = 0
	game.auxiliar = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if tempo > 0:
		tempo = tempo - delta
	
	if tempo <= 0 and not spawnado:
		spawnado = true
		var inimigo = pre_inimigo.instance()
		inimigo.set_global_position(get_node("PORTA_CIMA").get_global_position())
		add_child(inimigo)
		
	
	if game.get_player().vida < game.get_player().vida_max:
		dict_dialog.tutorial_scene = 1
		get_tree().change_scene("res://scenes/tutorial/death_tutorial.tscn")
	pass
