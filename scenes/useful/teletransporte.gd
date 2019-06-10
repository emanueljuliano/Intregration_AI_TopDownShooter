extends Area2D

# Declare member variables here. Examples:
export (String) var destino

export var ativo = false
export var multi_uso = false
var usado = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_teletransporte_body_entered(body):
	if not usado and ativo:
		if body == game.get_player():
			var x = game.get_player().get_global_position() - get_global_position()
			game.get_player().set_global_position(game.get_main().get_node(destino).get_global_position() + x)
			if not multi_uso:
				usado = true
	pass # Replace with function body.
