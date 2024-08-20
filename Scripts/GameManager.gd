extends Node3D

var player_score:int = 0

var framePrefab = preload("res://Scenes/frame.tscn")

func CreateNewFrame():
	var frameInstance = framePrefab.instantiate()
	frameInstance.position = Vector3(0,0,-28)
	add_child(frameInstance)

func _on_spawn_timer_timeout():
	CreateNewFrame()


func increase_score(points):
	player_score += points
	
func decrease_score(points):
		player_score -= points
