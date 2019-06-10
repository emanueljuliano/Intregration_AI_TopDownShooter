extends Area2D

var valor_vida = 20

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	get_node("anim").play("idle")
	pass


func _on_vida_body_entered(body):
	if body == game.get_player():
		game.get_player().add_vida(valor_vida)
		get_node("AudioStreamPlayer").play()
		queue_free()
	pass # Replace with function body.
