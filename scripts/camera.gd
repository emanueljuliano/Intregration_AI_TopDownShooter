extends Camera2D

export var segue = false
export var escuro = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if escuro:
		get_node("Light2D").visible = true
	else:
		get_node("Light2D").visible = false
	if segue and current:
		set_position(game.get_player().get_position())
	pass
