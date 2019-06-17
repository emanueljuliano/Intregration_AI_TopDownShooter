extends Node2D

export var vida = 1000

export var ativo = true
export var imortal = true

var death = 0

export var segmentos = 20
var pre_corpo = preload("res://scenes/bosses/centipeta_corpo.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	if not ativo:
		get_node("crawl").stop()
	
	var i = 1
	while i <= segmentos:
		var segmento_atual = "centipeta_corpo" + String(i)
		if not get_child(i).get_name() == segmento_atual:
			var corpo = pre_corpo.instance()
			corpo.segmento = i
			add_child(corpo)
			corpo.set_name(segmento_atual)
			move_child(get_node(segmento_atual), i)
			corpo.set_rotation(get_rotation())
			corpo.set_position(Vector2(0,0))#(-90)*i, 0))
		i = i + 1
			
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ativo and vida > 0:
		get_node("crawl").play(get_node("crawl").get_playback_position())
	else:
		get_node("crawl").stop()
	
	if vida <= 250:
		get_node("centipeta_cabeca").trocar()
		modulate = Color(1,0,0,1)
		game.get_main().get_node("TileMap").modulate = Color(0.5, 0.1, 0, 1)
		game.get_camera().escuro = true
		
	
	
	if vida <= 0:
		game.get_main().get_node("PORTA2").get_node("Light2D").set_visible(true)
		game.get_main().get_node("musica").stop()
		if death == 0:
			game.inimigos_mortos += 1
			death = 1
		
		set_process(false)
		get_node("anim").play("morrer")
	pass
