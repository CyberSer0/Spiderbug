extends KinematicBody2D

var gravity = 100
var movement_speed = 150

var turn_timer = 50
var go_right = true


var velocity = Vector2(0,0)

func _ready():
	pass

func _process(delta): 
	move()
	turn_timer=turn_timer - 1
	if(turn_timer == 0):
		go_right = !go_right
		turn_timer = 50
		scale.x = -scale.x
		
	pass
	
func move():	
	velocity.y = gravity
	
	
	if(go_right == true):
		velocity.x = movement_speed
		
	else:
		velocity.x = -movement_speed
		
		
	velocity = move_and_slide(velocity, Vector2.UP)
