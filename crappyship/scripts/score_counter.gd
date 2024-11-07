extends Label

var score = 0


func _on_alien_collected():
	score += 1
	text = "Score: %s" % score


	Global.latestScore += 1

	pass
