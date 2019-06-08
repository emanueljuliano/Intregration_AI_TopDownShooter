extends KinematicBody2D

var avanco = 500
var curva = 200
var esquiva = 700
var angulo = 0
var periodo_curva = 20

var direcao = 1
var iluminado = false

var dano = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if get_parent().vida <= 0:
		remove_from_group(game.INIMIGO)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(0, false)
		set_collision_mask_bit(0, false)
	
	if get_parent().ativo:
		look_at(game.get_player().get_position())
		if iluminado:
			get_node("sprite").set_rotation(deg2rad(-90 + direcao*90))
		else:
			get_node("sprite").set_rotation(deg2rad(-90))

func _physics_process(delta):
	if get_parent().vida > 0 and get_parent().ativo:
		angulo = angulo + periodo_curva
		if iluminado:
			move_and_slide((get_node("lado").get_global_position() - get_global_position()) * esquiva * direcao)
		else:
			move_and_slide(((get_node("frente").get_global_position() - get_global_position()) * avanco) + ((get_node("lado").get_global_position() - get_global_position()) * sin(deg2rad(angulo)) * curva))
		if get_slide_count() > 0:
			if get_slide_collision(0).collider == game.get_player():
				game.get_player().dano_player(dano, get_global_position(), filename)
	pass

func dano(valor):
	get_parent().vida = get_parent().vida - valor
	get_node("anim").stop()
	get_node("anim").play("dano")
	pass

func na_luz():
	if not iluminado:
		if randi()%2 == 0:
			direcao = 1
		else:
			direcao = -1
	iluminado = true
	pass

func no_escuro():
	iluminado = false
	pass