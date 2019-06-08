extends Node2D

export var ativado = true
export var intervalo = 2
var tempo = 0
var pre_antony = preload("res://scenes/antony.tscn")
export var antony = true
var pre_monica = preload("res://scenes/monica.tscn")
export var monica = true
var pre_larissa = preload("res://scenes/larissa.tscn")
export var larissa = true
var pre_margaret = preload("res://scenes/margaret.tscn")
export var margaret = true
var pre_bebel = preload("res://scenes/bebel.tscn")
export var bebel = true
var pre_barbara = preload("res://scenes/barbara.tscn")
export var barbara = true
var pre_greg = preload("res://scenes/greg.tscn")
export var greg = true
var pre_beto = preload("res://scenes/beto.tscn")
export var beto = true
var lista_inimigos = []
#pre_barbara, pre_antony, pre_monica, pre_larissa, pre_margaret, pre_bebel, pre_greg, pre_beto
var spawn_pos = Vector2()
var rand_n

# Called when the node enters the scene tree for the first time.
func _ready():
	if antony:
		lista_inimigos.append(pre_antony)
	if monica:
		lista_inimigos.append(pre_monica)
	if larissa:
		lista_inimigos.append(pre_larissa)
	if margaret:
		lista_inimigos.append(pre_margaret)
	if bebel:
		lista_inimigos.append(pre_bebel)
	if barbara:
		lista_inimigos.append(pre_barbara)
	if greg:
		lista_inimigos.append(pre_greg)
	if beto:
		lista_inimigos.append(pre_beto)
	randomize()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ativado:
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

