extends StaticBody2D

# Declare member variables here. Examples:

export (bool) var automatico

export var tempo_ativar = 2
export var ativado = false
var tempo = 0
var dano = 1


# Called when the node enters the scene tree for the first time.
func _ready():
	tempo = tempo_ativar
	get_node("raio").get_node("CollisionShape2D").shape.set_b(Vector2(0, get_node("ponto1").get_global_position().distance_to(get_node("ponto2").get_global_position())))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if not automatico and not ativado:
			get_node("raio").get_node("Sprite").visible = false
		
	if automatico and not ativado:
		if tempo <= 0:
			ativar()
			get_node("raio").get_node("Sprite").visible = true
		else:
			get_node("raio").get_node("Sprite").visible = false
		tempo = tempo - delta
	
	if ativado:
		get_node("raio").get_node("Sprite").visible = true
		var i = 0
		while i < len(get_node("raio").get_overlapping_bodies()):
			if get_node("raio").get_overlapping_bodies()[i].has_method("dano_player"):
				get_node("raio").get_overlapping_bodies()[i].dano_player(dano, game.get_player().get_global_position())
			i = i + 1
	pass

func ativar():
	var i = 0
	while i < len(get_node("raio").get_overlapping_bodies()):
		if get_node("raio").get_overlapping_bodies()[i].has_method("dano_player"):
			get_node("raio").get_overlapping_bodies()[i].dano_player(dano, game.get_player().get_global_position())
		i = i + 1
	if tempo <= tempo_ativar*(-1):
		tempo =  tempo_ativar
	pass
