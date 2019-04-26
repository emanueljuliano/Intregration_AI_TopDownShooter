extends Area2D

var vel = 125
var vida = 40
var dentro = false

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if vida <= 0:
		set_process(false)
		remove_from_group(game.INIMIGO)
		get_node("anim").play("morrer")
	look_at(game.get_player().get_position())
	if not dentro:
		set_position(get_position() + (get_node("frente").get_global_position() - get_global_position()) * vel * delta)
	pass

func dano(valor):
	vida = vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func _on_enemy_area_entered(area):
	dentro = true
	pass # Replace with function body.
func _on_enemy_area_exited(area):
	dentro = false
	pass # Replace with function body.
