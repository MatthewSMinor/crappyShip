extends CharacterBody2D

const JUMP_VELOCITY = -200.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	position.x = 64
	# add the gravity
	velocity.y += gravity * delta
	
	if position.y > 320 or position.y < 0:
		get_tree().reload_current_scene()
	
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		
	move_and_slide()


func _on_area_2d_area_entered(area: Area2D) -> void:
	#alien collsion handled in alien script
	
	if (area.is_in_group("astroid")):
		print("astroid collision")
		get_tree().reload_current_scene()
	pass # Replace with function body.
