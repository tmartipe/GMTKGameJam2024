extends Control

@onready var scoreLabel = $Score

func _process(delta):
	scoreLabel.text = "Score: %d" % GameManager.player_score
