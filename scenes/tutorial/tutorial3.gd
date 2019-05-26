extends Node2D

var tempo = 5
var spawnado = false
var pre_inimigo = preload("res://scenes/melee.tscn")
var chave

# Called when the node enters the scene tree for the first time.
func _ready():
	game.inimigos_mortos = 0
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if tempo > 0:
		tempo = tempo - delta
	
	if tempo <= 0 and not spawnado:
		spawnado = true
		var inimigo = pre_inimigo.instance()
		chave = inimigo
		inimigo.set_global_position(get_node("PORTA_CIMA").get_global_position())
		add_child(inimigo)
		
	if game.inimigos_mortos >= 1:
		get_node("PORTA").aberta = true
		get_node("PORTA2").aberta = true
		
		
	#REPETIR FASE SE MORRER
	if game.get_player().vida < game.get_player().vida_max:
		get_tree().change_scene("res://scenes/tutorial/tutorial3.tscn")
	
	pass
