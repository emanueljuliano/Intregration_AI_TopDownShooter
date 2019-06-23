extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):	
	if game.get_player().vida < 1:
		game.deaths += 1
		game.save_game()
		dict_dialog.key = "level2"
		get_tree().change_scene("res://scenes/tutorial/litle_deaths.tscn")

	if $morte4.position.x < 1360:
		$morte4.ativo = false

func _on_move_death_body_entered(body):
	if body == game.get_player():
		$morte4.ativo = true
	
func _on_move_death2_body_entered(body):
	if body == game.get_player():
		$morte4.ativo = true

func _on_light_on_body_entered(body):
	if body == game.get_player():
		$TileMap.modulate = "#f1a902"
		$player/camera1.escuro = false
		
func _on_light_off_body_entered(body):
	if body == game.get_player():
		$TileMap.modulate = "#926600"
		$player/camera1.escuro = true

func _on_light_off2_body_entered(body):
	if body == game.get_player():
		$TileMap.modulate = "#926600"
		$player/camera1.escuro = true


func _on_Area2D_body_exited(body):
	if body == game.get_player():
		$morte.ativo = true

func _on_death_speed_body_entered(body):
	if body == game.get_player():
		$morte.velocidade = 55
		$morte.ativo = true


func _on_death_speed2_body_entered(body):
	if body == game.get_player():
		$morte19.velocidade = 8
		$morte19.ativo = true
		$morte18.velocidade = 8
		$morte18.ativo = true

func _on_death_speed3_body_entered(body):
	if body == game.get_player():
		$morte17.velocidade = 5
		$morte17.ativo = true
		$morte16.velocidade = 25
		$morte16.ativo = true


func _on_death_speed4_body_entered(body):
	if body == game.get_player():
		$morte15.velocidade = 20
		$morte15.ativo = true
		$morte14.velocidade = 9
		$morte14.ativo = true

func _on_death_speed5_body_entered(body):
	if body == game.get_player():
		$morte13.velocidade = 20
		$morte13.ativo = true
		$morte12.velocidade = 35
		$morte12.ativo = true


func _on_death_speed6_body_entered(body):
	if body == game.get_player():
		$morte11.velocidade = 7
		$morte11.ativo = true
		$morte10.velocidade = 7
		$morte10.ativo = true


func _on_END_body_entered(body):
	if body == game.get_player():
		get_tree().change_scene("res://scenes/fases/fase1/fase1_2.tscn")