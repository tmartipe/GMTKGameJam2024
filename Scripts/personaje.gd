extends CharacterBody3D

@onready var material = $MeshInstance3D.get_active_material(0)
var currentShape: Color
var Q:bool
var W:bool
var E:bool
	

func _process(_delta):
	readInputs()
	changeMaterial()
	pass
	
func readInputs():
	Q = Input.is_action_pressed("Q")
	W = Input.is_action_pressed("W")
	E = Input.is_action_pressed("E")
	
func changeMaterial():
	
	if (Q and W and E):
		currentShape = ShapesConstants.QWE
	elif(Q and W):
		currentShape = ShapesConstants.QW
	elif(W and E):
		currentShape = ShapesConstants.WE
	elif(Q and E):
		currentShape = ShapesConstants.QE
	elif(Q):
		currentShape = ShapesConstants.Q
	elif(W):
		currentShape = ShapesConstants.W
	elif(E):
		currentShape = ShapesConstants.E
	else:
		currentShape = Color(255,255,255)
	material.albedo_color = currentShape
