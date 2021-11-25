extends Node

func change_scene(path, delay):
	yield(get_tree().create_timer(delay), "timeout")
	get_tree().change_scene(path)
