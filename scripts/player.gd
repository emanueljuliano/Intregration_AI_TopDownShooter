extends KinematicBody2D

var vel
var vel_base = 400 * scale.x
var vel_dash = 5
var pre_tiro = preload("res://scenes/tiro.tscn")
var reload = 0
var tempo = 0.25

var arma = "padrao"

var impulso

var lanterna = false
var tempo_espera_dash_max = 2
var tempo_espera_dash = 0
var tempo_dash_max = 0.2
var tempo_dash = 0
var dashando = false

export var mover = true
export var atirar = true
export var dashar = true
export var iluminar = true
export var imortal = false

var vida = 100.0
var vida_max = 100.0
var empurrao = 2000
var knockback = Vector2()
var tempo_vida = 1.0


var scene_path_to_load

# Called when the node enters the scene tree for the first time.
func _ready():
	look_at(get_global_mouse_position())
	set_arma("padrao")
	vel = vel_base
	get_node("anim").play("idle")
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	game.exist_time += delta

	look_at(get_global_mouse_position())
	
	if Input.is_action_pressed("clickE"):
		atirar()
	
	if reload > 0:
		reload = reload - delta
	
	if iluminar:
		if Input.is_action_just_pressed("clickD") or Input.is_action_just_pressed("e"):
			lanterna = not lanterna
			#atualizar_lanterna()
		
	get_node("luz").set_visible(lanterna)
	atualizar_lanterna()
	
	get_node("sprite").get_node("lanterna").set_visible(lanterna)
	get_node("sprite").get_node("dash").set_visible(not ((dashar and (not dashando)) and tempo_espera_dash<0))
	get_node("sprite").get_node("vida").modulate.a = 1 - vida/vida_max
	
	if vida<=(vida_max/2) and not imortal:
		if tempo_vida<=0:
			get_node("coracao").play()
			tempo_vida = 0.5 + 1*(vida/(vida_max/2))
		else:
			tempo_vida = tempo_vida - delta
			
	if Input.is_action_just_pressed("ui_cancel"):
		scene_path_to_load = 'res://title_screen/TitleScreen.tscn'
		$FadeIn.show()
		$FadeIn.fade_in()
	
	pass
	
	
func _physics_process(delta):
	
	if dashar:
		if not dashando:
			if Input.is_action_just_pressed("dash") and tempo_espera_dash<=0:
				get_node("vush").play()
				game.num_dashs += 1
				vel = vel_base * vel_dash
				dashando = true
				tempo_dash = tempo_dash_max
			tempo_espera_dash = tempo_espera_dash - delta
		else:
			tempo_dash = tempo_dash - delta
			tempo_espera_dash = tempo_espera_dash_max
			
		if tempo_dash<=0 and dashando:
			vel = vel_base
			dashando = false
		
		
	if mover:
		if Input.is_action_pressed("cima"):
			if Input.is_action_pressed("esquerda") or Input.is_action_pressed("direita"):
				move_and_slide(Vector2(0, -sin(45)) * vel)
			else:
				move_and_slide(Vector2(0,-1) * vel)
		
		if Input.is_action_pressed("baixo"):
			if Input.is_action_pressed("esquerda") or Input.is_action_pressed("direita"):
				move_and_slide(Vector2(0, sin(45)) * vel)
			else:
				move_and_slide(Vector2(0,1) * vel)
			
		if Input.is_action_pressed("direita"):
			if Input.is_action_pressed("cima") or Input.is_action_pressed("baixo"):
				move_and_slide(Vector2(cos(45), 0) * vel)
			else:
				move_and_slide(Vector2(1,0) * vel)
			
		if Input.is_action_pressed("esquerda"):
			if Input.is_action_pressed("cima") or Input.is_action_pressed("baixo"):
				move_and_slide(Vector2(-cos(45), 0) * vel)
			else:
				move_and_slide(Vector2(-1,0) * vel)
	
	if knockback != Vector2(0,0):
		move_and_slide(knockback*empurrao)
		knockback = knockback/2
	
	
	pass


func atirar():
	if atirar:
		if reload <= 0:
			game.num_shoots += 1
			var tiro = pre_tiro.instance()
			tiro.set_global_position(get_node("mira").get_global_position())
			get_owner().add_child(tiro)
			tiro.set_rotation(get_rotation())
			get_node("atirar").play()
			reload = tempo


func _on_lanterna_body_entered(body):
	if lanterna:
		if body.is_in_group(game.INIMIGO):
			if body.has_method("na_luz"):
				body.na_luz()
				pass
	pass # Replace with function body.

func _on_lateral_body_exited(body):
	if body.is_in_group(game.INIMIGO):
		if body.has_method("no_escuro"):
			body.no_escuro()
			pass
	pass # Replace with function body.

func atualizar_lanterna():
	if lanterna:
		var i = 0
		while i < len(get_node("lanterna").get_overlapping_bodies()):
			get_node("RayCast2D").set_global_rotation(0)
			get_node("RayCast2D").set_cast_to(get_node("lanterna").get_overlapping_bodies()[i].get_global_position() - get_global_position())
			get_node("RayCast2D").add_exception(get_node("lanterna").get_overlapping_bodies()[i])
			get_node("RayCast2D").force_raycast_update()
			while get_node("RayCast2D").get_collider() != null and get_node("RayCast2D").get_collider().is_in_group(game.INIMIGO):
				get_node("RayCast2D").add_exception(get_node("RayCast2D").get_collider())
				get_node("RayCast2D").force_raycast_update()
			get_node("RayCast2D").force_raycast_update()
			if get_node("lanterna").get_overlapping_bodies()[i].has_method("na_luz"):
				if (not get_node("RayCast2D").is_colliding()):
					get_node("lanterna").get_overlapping_bodies()[i].na_luz()
				else:
					get_node("lanterna").get_overlapping_bodies()[i].no_escuro()
			i = i + 1
	else:
		var i = 0
		while i < len(get_node("lateral").get_overlapping_bodies()):
			if get_node("lateral").get_overlapping_bodies()[i].has_method("no_escuro"):
				get_node("lateral").get_overlapping_bodies()[i].no_escuro()
			i = i + 1
	pass

func dano_player(valor, posicao_inimigo, path):
	if vida > 0:
		game.last_enemy = String(path)
	vida = vida - valor
	var direcao = get_global_position() - posicao_inimigo
	if direcao != Vector2(0,0):
		var alpha = 1/(sqrt(direcao.x*direcao.x + direcao.y*direcao.y))
		knockback = knockback + alpha*direcao
	get_node("anim").stop()
	get_node("anim").play("dano")
	
	#MORTE DO PLAYER (TALVEZ DEVA SER CONFIGURADA PELO MAIN DA FASE, PARA QUE A FASE SEJA REINICIADA)
	if vida <= 0 and not imortal:
		game.deaths += 1
		game.save_game()
		get_tree().change_scene('res://scenes/death/Death.tscn')		
	pass

func add_vida(valor):
	vida = clamp(vida + valor, 0, vida_max)
	pass

func set_arma(tipo):
	arma = tipo
	
	if arma == "padrao":
		get_node("sprite").get_node("arma").modulate = Color(0, 1, 0.215, 1)
		
		
	#NAO APARECER ARMA SE NAO PUDER ATIRAR
	if not atirar:
		get_node("sprite").get_node("arma").modulate = Color(0, 0, 0, 1)