extends Area2D

# Declare member variables here. Examples:
export var visivel = true
export var ativo = false
export var velocidade = 100

export var parar_maior_x = false
export var parar_menor_x = false
export var x = 0
export var parar_maior_y = false
export var parar_menor_y = false
export var y = 0

var dentro = false

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Sprite").visible = visivel
	get_node("AnimationPlayer").play("piscar")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ativo:
		set_global_position((get_global_position() + (get_node("frente").get_global_position() - get_global_position())*velocidade*delta))
	if dentro:
		game.get_player().dano_player(game.get_player().vida, game.get_player().get_global_position(), filename)
	if (parar_maior_x and get_global_position().x > x) or (parar_menor_x and get_global_position().x < x):
		ativo = false
	if (parar_maior_y and get_global_position().y > y) or (parar_menor_y and get_global_position().y < y):
		ativo = false
	pass


func _on_morte_body_entered(body):
	if body == game.get_player():
		dentro = true
	pass # Replace with function body.


func _on_morte_body_exited(body):
	if body == game.get_player():
		dentro = false
	pass # Replace with function body.
