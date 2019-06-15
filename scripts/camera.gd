extends Camera2D

#export (bool) var segue
export (bool) var escuro

var posicao_inicial = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	posicao_inicial = get_global_position()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if escuro and current:
		get_node("Light2D").visible = true
	else:
		get_node("Light2D").visible = false
	#if current:
		#if segue:
		#	set_position(game.get_player().get_position())
		#else:
		#	set_global_position(posicao_inicial)
		#	get_node("Light2D").visible = false
	pass
