extends RigidBody2D

var vel = 0
onready var current_leg_nr = int(self.name.right(4))

func _integrate_forces(state):
	var bufor_point = Bufor.player_closest_points[current_leg_nr]
	if bufor_point != Vector2(0, 0):
		vel = (self.position.distance_to(bufor_point))
		print(vel)
		apply_central_impulse(self.position.direction_to(bufor_point).normalized())
	else:
		vel = 0
