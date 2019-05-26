extends Node2D

var vida = 40

export var segmentos = 4
var pre_corpo = preload("res://scenes/larissa_corpo.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	var i = 1
	while i <= segmentos:
		var segmento_atual = "larissa_corpo" + String(i)
		if not get_child(i).get_name() == segmento_atual:
			var corpo = pre_corpo.instance()
			corpo.segmento = i
			add_child(corpo)
			corpo.set_name(segmento_atual)
			move_child(get_node(segmento_atual), i)
			corpo.set_position(Vector2((-90)*i, 0))
		i = i + 1
			
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if vida <= 0:
		set_process(false)
		get_node("anim").play("morrer")
	pass
