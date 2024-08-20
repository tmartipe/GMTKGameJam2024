extends Node3D

var framePrefab = preload("res://Scenes/frame.tscn")

func CreateNewFrame():
	var frameInstance = framePrefab.instantiate()
	frameInstance.position = Vector3(0,0,-28)
	add_child(frameInstance)

func _on_spawn_timer_timeout():
	CreateNewFrame()
