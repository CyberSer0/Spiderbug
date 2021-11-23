extends RigidBody2D

export var vel = 900
var kosci = []
var kostki = []

func _ready():
	for i in range(8):
		kosci.append(get_node("Skeleton2D/Bone2D/" + String(i)))
		kostki.append(get_node("Skeleton2D/Bone2D/" + String(i) + "/" + String(i)))
	set_process(true)

func _process(_delta):
	self.mass = 2
	if Input.is_action_pressed("move_left"):
		self.linear_velocity = Vector2(-vel,0)
	if Input.is_action_pressed("move_right"):
		self.linear_velocity = Vector2(vel,0)
	if Input.is_action_pressed("move_up"):
		self.linear_velocity = Vector2(0,-vel)
	if Input.is_action_pressed("move_down"):
		self.linear_velocity = Vector2(0,vel)
	if(!Input.is_action_pressed("move_left") && !Input.is_action_pressed("move_right") && !Input.is_action_pressed("move_up") && !Input.is_action_pressed("move_down")):
		self.mass = 0.01
	for i in range(8):
		var poz = get_parent().get_node("noga" + String(i+1)).get_global_position()
		kosci[i].set_rotation(self.global_position.direction_to(poz).angle())
		kostki[i].set_scale(Vector2(kostki[i].get_global_position().distance_to(poz)/70, 1))
