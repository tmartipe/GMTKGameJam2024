extends Node3D

var player_score:int = 0

func increase_score(points):
	player_score += points
	
func decrease_score(points):
		player_score -= points
