extends AnimatedSprite

onready var light = get_node("Light2D")
onready var max_energy = light.energy

func _physics_process(delta):
	if self.frame >= 12 and self.frame <= 38:
		light.energy = max_energy
		light.enabled = true
	elif self.frame >= 1 and self.frame <= 4 or self.frame >= 39 and self.frame <= 42:
		light.energy = 0.4
		light.enabled = true
	elif self.frame >= 5 and self.frame <= 8 or self.frame >= 36 and self.frame <= 38:
		light.energy = 0.8
		light.enabled = true
	else:
		get_node("Light2D").enabled = false
