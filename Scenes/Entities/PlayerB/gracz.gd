extends RigidBody2D

export var vel = 300

func _ready():
	set_process(true)

func _process(delta):
	self.mass = 2
	if Input.is_action_pressed("move_left"):
		self.linear_velocity = Vector2(-vel,0)
	elif Input.is_action_pressed("move_right"):
		self.linear_velocity = Vector2(vel,0)
	elif Input.is_action_pressed("move_up"):
		self.linear_velocity = Vector2(0,-vel)
	elif Input.is_action_pressed("move_down"):
		self.linear_velocity = Vector2(0,vel)
	else:
		self.mass = 0.01
