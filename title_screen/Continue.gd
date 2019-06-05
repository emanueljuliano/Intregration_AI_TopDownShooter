extends Button


func _on_Continue_pressed():
	if $Menu/Decisions/cause.get_visible_characters() > $Menu/Decisions/cause.get_total_character_count():
		get_tree().change_scene("res://scenes/main.tscn")
	else:
		$Menu/Decisions/cause.set_visible_characters($Menu/Decisions/cause.get_total_character_count())





