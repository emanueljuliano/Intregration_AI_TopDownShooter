extends Camera2D

export var segue = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if segue and current:
		set_position(game.get_player().get_position())
	pass
