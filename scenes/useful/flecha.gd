extends Area2D

# Declare member variables here. Examples:
var vel = 1000
var dano = 50

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	set_position(get_position() + (get_node("frente").get_global_position() - get_global_position()) * vel * delta)
	pass

func _on_flecha_body_entered(body):
	if body == game.get_player():
		game.get_player().dano_player(dano, get_global_position(), filename)
	queue_free()
	pass # Replace with function body.
