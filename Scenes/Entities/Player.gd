extends KinematicBody2D

var velocity = 100
var direction

func _ready():
	pass

func _physics_process(delta):
	movement(delta)

func movement(delta):
	direction = Vector2(Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), Input.get_action_strength("move_down") - Input.get_action_strength("move_up")).normalized()
	move_and_slide(direction * velocity * delta * 300)
