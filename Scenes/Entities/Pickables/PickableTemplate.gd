extends Area2D

func _ready():
	add_user_signal("picked")

func _on_PickableTemplate_body_entered(body):
	if body.name == "Player":
		emit_signal("picked")
		self.queue_free()
