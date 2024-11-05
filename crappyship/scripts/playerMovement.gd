extends CharacterBody2D


const SPEED = 400.0
const JUMP_VELOCITY = -300.0

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

func _physics_process(delta):
	# add the gravity
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = JUMP_VELOCITY
		
	move_and_slide()
