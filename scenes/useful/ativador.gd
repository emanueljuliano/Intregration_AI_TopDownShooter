extends Area2D

# Declare member variables here. Examples:
export (Array, String) var lista

var usado = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _on_parede_body_exited(body):
	if not usado:
		if body == game.get_player():
			usado = true
			var i = 0
			while i < len(lista):
				if game.get_main().has_node(lista[i]):
					game.get_main().get_node(lista[i]).ativo = true
				i = i + 1
	pass # Replace with function body.
