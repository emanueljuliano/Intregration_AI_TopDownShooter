extends Node2D

const INIMIGO = "inimigo"

# Called when the node enters the scene tree for the first time.
func _ready():
	var i = 0
	while i < get_tree().get_root().get_child_count():
		if get_tree().get_root().get_child(i).is_in_group("lacraia"):
			var n = 0
			while n < get_tree().get_root().get_child(i).get_child_count():
				if get_tree().get_root().get_child(i).get_child(n).is_in_group("corpo"):
					get_tree().get_root().get_child(i).get_child(n).proximo_segmento = get_tree().get_root().get_child(i).get_child(n+1)
				n = n + 1
		i = i + 1
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func get_main():
	return get_tree().get_root().get_node("main")
	pass

func get_player():
	return get_tree().get_root().get_node("main").get_node("player")
	pass
