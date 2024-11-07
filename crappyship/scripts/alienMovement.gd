extends CharacterBody2D

signal collected

var rng = RandomNumberGenerator.new()
var direction = rng.randf_range(-1, 1)
var speed = rng.randf_range(40, 80.0)
var rotationVariance = rng.randf_range(0.1, 2)


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	position.y = rng.randf_range(5, 315)
	position.x = 608
	rotation = rng.randf_range(-180, 180)


func _physics_process(delta: float) -> void:
	var angularSpeed = PI/rotationVariance
	rotation += angularSpeed * delta
	position.x -= speed * delta
	position.y += direction * delta
	if (position.x < -1):
		print("deleting alien off scene")
		queue_free()
	
	pass;
	

func _on_area_2d_area_entered(area: Area2D) -> void:
	if (area.is_in_group("player")):
		print("alien collided with player")
		
		collected.emit()
		
		queue_free()
	pass # Replace with function body.
