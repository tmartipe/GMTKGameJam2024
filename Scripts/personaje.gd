extends CharacterBody3D

@onready var sprite = $Sprite3D
var currentShape: CompressedTexture2D
var currentScale: int = 0
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
	if(Input.is_action_just_pressed("ScaleUp") && currentScale < 2):
		++currentScale
	if(Input.is_action_just_pressed("ScaleDown") && currentScale > -2):
		--currentScale
	
func changeMaterial():
	
	#if (Q and W and E):
		#currentShape = ShapesConstants.QWE
	if(Q and W):
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
		currentShape = ShapesConstants.R
	else:
		currentShape = ShapesConstants.Default
	sprite.texture = currentShape
