extends RigidBody2D


var direction = Vector2()
var speed = 75


func _physics_process(delta):
	movement(delta)


func movement(delta):
	direction = Vector2(Input.get_action_strength("move_right") - Input.get_action_strength("move_left"), Input.get_action_strength("move_down") - Input.get_action_strength("move_up")).normalized()
	set_applied_force(direction * speed * mass * 500)
	
