extends Node2D

var intervalo = 2
var tempo = 0
var pre_antony = preload("res://scenes/antony.tscn")
var pre_monica = preload("res://scenes/monica.tscn")
var pre_larissa = preload("res://scenes/larissa.tscn")
var pre_margaret = preload("res://scenes/margaret.tscn")
var pre_bebel = preload("res://scenes/bebel.tscn")
var pre_barbara = preload("res://scenes/barbara.tscn")
var lista_inimigos = [pre_barbara]#, pre_antony, pre_monica, pre_larissa, pre_margaret, pre_bebel]
# pre_barbara, pre_antony, pre_monica, pre_larissa, pre_margaret, pre_bebel
var spawn_pos = Vector2()
var rand_n

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	rand_n = rand_range(0, 4)
	if tempo <= 0:
		var inimigo = lista_inimigos[randi()%lista_inimigos.size()].instance()
		if rand_n < 1:
			spawn_pos = Vector2(rand_range(0, 1024), +50)
		elif rand_n < 2:
			spawn_pos = Vector2(rand_range(0, 1024), 550)
		elif rand_n < 3:
			spawn_pos = Vector2(50, rand_range(0, 600))
		elif rand_n <= 4:
			spawn_pos = Vector2(974, rand_range(0, 600))
		inimigo.set_position(spawn_pos)
		game.get_main().add_child(inimigo)
		tempo = intervalo
		pass
	else:
		tempo = tempo - delta
	pass

