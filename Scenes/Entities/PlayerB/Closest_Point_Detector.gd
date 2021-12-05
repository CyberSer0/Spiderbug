extends RayCast2D


var rnd = RandomNumberGenerator.new()
var current_point_pos
onready var current_raycast_nr = int(self.name.right(9))

func _ready():
	rnd.randomize()
	print(current_raycast_nr)


func _physics_process(delta):
	if(self.get_collider()):
		current_point_pos = self.get_collision_point()
		
		var random
		if Bufor.player_closest_points[current_raycast_nr] == Vector2():
			Bufor.player_closest_points[current_raycast_nr] = current_point_pos
		elif self.position.distance_to(current_point_pos) < self.position.distance_to(Bufor.player_closest_points[current_raycast_nr]):
			Bufor.player_closest_points[current_raycast_nr] = current_point_pos
	else:
		Bufor.player_closest_points[current_raycast_nr] = Vector2()

