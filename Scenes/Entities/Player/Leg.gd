extends Node2D

onready var wallDetector = get_node("Grabber/WallDetector")
onready var grabber = get_node("Grabber")
var closestWall
var direction = Vector2(0, 0)

func _physics_process(delta):
	if closestWall != null:
		direction = (closestWall.position - grabber.position).normalized()
	grabber.apply_impulse(Vector2(35, 0), direction * 100)


func _on_WallDetector_body_entered(body):
	if body.get_collision_layer() == 3:
		closestWall = body
