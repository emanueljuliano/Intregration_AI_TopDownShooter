extends KinematicBody2D

var avanco = 135
var avanco_max = 135
var curva = 200
var esquiva = 700
var angulo = 0
var periodo_curva = 20

var direcao = 1
var iluminado = false

var dano = 10

var path = PoolVector2Array()# setget set_path


# Called when the node enters the scene tree for the first time.
func _ready():
	path = game.get_main().get_node("nav").get_simple_path(global_position, game.get_player().global_position)
	add_to_group(game.INIMIGO)
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	path = game.get_main().get_node("nav").get_simple_path(global_position, game.get_player().global_position, true)
	if get_parent().vida <= 0:
		remove_from_group(game.INIMIGO)
		set_process(false)
		set_physics_process(false)
		set_collision_layer_bit(12, false)
		set_collision_mask_bit(12, false)
		get_node("sprite").visible = false
	

func _physics_process(delta):
	if get_parent().ativo:
		look_at(path[1])
	
	#move_along_path(avanco)
	
	if get_parent().vida > 0 and get_parent().ativo:
		angulo = angulo + periodo_curva
		if global_position.distance_to(path[1]) > -1:
			move_and_slide(((get_node("frente").get_global_position() - get_global_position()) * avanco) + ((get_node("lado").get_global_position() - get_global_position()) * sin(deg2rad(angulo)) * curva))
#		if iluminado and game.get_camera().escuro:
#			move_and_slide((get_node("lado").get_global_position() - get_global_position()) * esquiva * direcao)
#		else:
#			move_and_slide(((get_node("frente").get_global_position() - get_global_position()) * avanco) + ((get_node("lado").get_global_position() - get_global_position()) * sin(deg2rad(angulo)) * curva))
		if get_slide_count() > 0:
			if get_slide_collision(0).collider == game.get_player():
				game.get_player().dano_player(dano, get_global_position(), filename)
	pass

func dano(valor):
	if get_parent().imortal:
		get_parent().vida = get_parent().vida - 1
	pass

#func na_luz():
#	if not iluminado:
#		if randi()%2 == 0:
#			direcao = 1
#			direcao = -1
#	iluminado = true
#	pass

#func no_escuro():
#	iluminado = false
#	pass

func move_along_path(distance : float):
	var start_point : = global_position
	for i in range(path.size()):
		var distance_to_next : = start_point.distance_to(path[0])
		if distance <= distance_to_next and distance > 0.0:
			#position = start_point.linear_interpolate(path[0], distance/distance_to_next)
			#move_and_slide(((get_node("frente").get_global_position() - get_global_position()) * avanco) + ((get_node("lado").get_global_position() - get_global_position()) * sin(deg2rad(angulo)) * curva))
			move_and_slide((get_node("frente").get_global_position() - get_global_position()) * avanco)
			break
		elif distance <= 0.0:
			global_position = path[0]
			break

		distance -= distance_to_next
		start_point = path[0]
		path.remove(0)
	pass

#func set_path(value : PoolVector2Array):
#	path = value
#	if value.size() == 0:
#		return
#	set_process(true)
#	pass

func trocar():
	if avanco_max != 175:
		get_node("grito").play()
		avanco_max = 175
		avanco = avanco_max