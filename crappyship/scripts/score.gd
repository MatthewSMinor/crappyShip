extends Label

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	if (Global.latestScore == 0):
		text = "No aliens... really?"
	else:
		text = "Latest Score: %s" % Global.latestScore
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_try_gain_button_pressed() -> void:
	# reset score in globals to 0
	Global.latestScore = 0
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	pass # Replace with function body.


func _on_main_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")
	pass # Replace with function body.
