extends StaticBody2D

func _ready():
	set_process(true)

func _process(_delta):
	if !Input.is_action_pressed("move_left") and !Input.is_action_pressed("move_right") and !Input.is_action_pressed("move_up") and !Input.is_action_pressed("move_down"):
		$Area2D.gravity_point = true
		$Area2D2.gravity_point = true
	else:
		$Area2D.gravity_point = false
		$Area2D2.gravity_point = false
