extends Node


@export var Astroid = preload("res://scenes/asteroid.tscn")
@onready var spawn

func _on_astroid_timer_timeout() -> void:
	spawn = Astroid.instantiate()
	add_child(spawn)
	#print("we are in the timeout function and have spawned an astroid")
	pass # Replace with function body.
