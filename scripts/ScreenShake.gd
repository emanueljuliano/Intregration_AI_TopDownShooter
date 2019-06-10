extends Node2D

# Declare member variables here. Examples:
const TRANS = Tween.TRANS_SINE
const EASE = Tween.EASE_IN_OUT

var amplitude = 0
var priority = 0

onready var camera = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func start(duration = 0.2, frequency = 15, amplitude = 1, priority = 0):
	if priority >= self.priority:
		self.priority = priority
		self.amplitude = amplitude
		
		get_node("Duration").wait_time = duration
		get_node("Frequency").wait_time = 1 / float(frequency)
		get_node("Duration").start()
		get_node("Frequency").start()
		
		_new_shake()
	pass

func _new_shake():
	var rand = Vector2()
	rand.x = rand_range(-amplitude, amplitude)
	rand.y = rand_range(-amplitude, amplitude)
	
	get_node("ShakeTween").interpolate_property(camera, "offset", camera.offset, rand, get_node("Frequency").wait_time, TRANS, EASE)
	get_node("ShakeTween").start()
	pass


func _reset():
	get_node("ShakeTween").interpolate_property(camera, "offset", camera.offset, Vector2(), get_node("Frequency").wait_time, TRANS, EASE)
	get_node("ShakeTween").start()
	
	priority = 0
	pass


func _on_Frequency_timeout():
	_new_shake()
	pass # Replace with function body.


func _on_Duration_timeout():
	_reset()
	get_node("Frequency").stop()
	pass # Replace with function body.
