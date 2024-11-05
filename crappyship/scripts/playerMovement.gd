extends CharacterBody2D

const JUMP_VELOCITY = -200.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(delta):
	position.x = -200
	# add the gravity
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		
	move_and_slide()
