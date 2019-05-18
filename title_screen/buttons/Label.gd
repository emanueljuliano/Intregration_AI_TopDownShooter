extends Label

# Change the continue color, veryfing if there's a save game.
func _ready():
	if game.deaths == 0 and game.level == 1:
		modulate = Color(0, 0.5, 0)
	else:
		modulate = Color(1, 1, 1)
		