extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= 1
	
	
#func _physics_process(delta):
	## add the gravity
	#velocity.y += 2 * delta
	#
	#move_and_slide()
