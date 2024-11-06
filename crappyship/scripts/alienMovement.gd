extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var direction = rng.randf_range(-1, 1)
var speed = rng.randf_range(20, 70.0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = rng.randf_range(0, 320)
	position.x = 608
	rotation = rng.randf_range(-20, 20)


		
func _physics_process(delta: float) -> void:
	var angularSpeed = PI
	rotation += angularSpeed * delta
	position.x -= speed * delta
	position.y += direction * delta
	if (position.x < -1):
		print("deleting alien off scene")
		queue_free()
	
	pass;
	
