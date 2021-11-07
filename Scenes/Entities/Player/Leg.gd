extends Node2D

onready var leg = get_node("Leg")
onready var fleg = get_node("FLeg")
onready var grabber = get_node("Grabber")
onready var player = get_parent()

var closestWall
var direction = Vector2(0, 0)
var latched_on = false

func _physics_process(delta):
	if closestWall != null:
		direction = position.direction_to(closestWall.position)
	grabber.set_applied_force(direction * 1000)


func _on_Grabber_body_entered(body):
	grabber.sleeping = true
	grabber.mode = RigidBody2D.MODE_STATIC
	latched_on = true


func _on_Grabber_body_exited(body):
	grabber.mode = RigidBody2D.MODE_RIGID
	grabber.apply_central_impulse(Vector2.ONE)
	latched_on = false
