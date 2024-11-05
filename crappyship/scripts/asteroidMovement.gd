extends CharacterBody2D

var rng = RandomNumberGenerator.new()
var direction = rng.randf_range(-5, 5)
var speed = rng.randf_range(20, 70.0)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = rng.randf_range(0, 320)
	position.x = 608
	rotation = rng.randf_range(-20, 20)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	position.x -= speed * delta
	position.y += direction * delta
	if (position.x < -1):
		print("deleting astroid off scene")
		queue_free()
	
