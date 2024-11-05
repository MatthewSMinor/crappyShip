extends Node


@export var Astroid = preload("res://scenes/asteroid.tscn")

@onready var timer = $"astroidTimer"

func _on_timer_timeout():
	var spawn = Astroid.instantiate()
	add_child(spawn)
	print("we are in the timeout function and have spawned an astroid")
