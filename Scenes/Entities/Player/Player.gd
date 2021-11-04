extends RigidBody2D


var direction = Vector2()
var speed = 75


func _physics_process(delta):
	movement(delta)


func movement(delta):
	direction = Vector2(Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), Input.get_action_strength("move_down") - Input.get_action_strength("move_up")).normalized()
	add_force(Vector2(0, 0), direction * speed * mass)
	
