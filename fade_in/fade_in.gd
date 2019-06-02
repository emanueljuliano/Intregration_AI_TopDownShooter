extends ColorRect

signal fade_finished
var sound = AudioStreamPlayer.new()

func fade_in():
	self.add_child(sound)
	sound.stream = load("res://samples/fadein.ogg")
	sound.play(0.13)
	sound.set_volume_db(-6)
	$AnimationPlayer.play("fade_in")

func _on_AnimationPlayer_animation_finished(anim_name):
	sound.stop()
	emit_signal("fade_finished")
