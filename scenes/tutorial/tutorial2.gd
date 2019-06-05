extends Node2D

var tempo = 5
var spawnado = false
var pre_inimigo = preload("res://scenes/melee.tscn")
var movimentou = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("musica").play(game.music_time)
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
		if movimentou:
			get_tree().change_scene("res://scenes/tutorial/tutorial3.tscn")
		else:
			get_tree().change_scene("res://scenes/tutorial/tutorial2.tscn")
	pass


func _on_Area2D_body_exited(body):
	if body == game.get_player():
		movimentou = true
	pass # Replace with function body.
