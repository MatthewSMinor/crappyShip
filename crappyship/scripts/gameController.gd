extends Node


@export var Astroid = preload("res://scenes/asteroid.tscn")
@onready var spawn

@export var Alien = preload("res://scenes/alien.tscn")
@onready var alienSpawn

func _on_astroid_timer_timeout() -> void:
	spawn = Astroid.instantiate()
	add_child(spawn)
	#print("we are in the timeout function and have spawned an astroid")
	pass # Replace with function body.


func _on_alien_timer_timeout() -> void:
	alienSpawn = Alien.instantiate()
	add_child(alienSpawn)
	print("we are spawning an alien")
	pass # Replace with function body.
