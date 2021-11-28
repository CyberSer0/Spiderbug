extends Area2D

func _ready():
	pass

func _on_Area2D_body_entered(body):
	if body.name == "gracz":
		ChangeScene.change_scene("res://Scenes/Levels/Third_Stage.tscn", 0.1)
