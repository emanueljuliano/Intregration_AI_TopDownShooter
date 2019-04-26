extends Area2D

var vel = 800

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if get_position().x > 1024 or get_position().x < 0 or get_position().y > 600 or get_position().y < 0:
		queue_free()

	set_position(get_position() + (get_node("frente").get_global_position() - get_global_position()) * vel * delta)

	pass # Replace with function body.


func _on_tiro_body_entered(body):
	if body != game.get_player():
		if body.is_in_group(game.INIMIGO):
			if body.has_method("dano"):
				body.dano(10)
		queue_free()
	pass # Replace with function body.
