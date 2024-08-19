extends CharacterBody3D

@onready var sprite = $Sprite3D
var currentShape: CompressedTexture2D
var Q:bool
var W:bool
var E:bool
var scale_step = Vector3(0.1,0.1,0.1)
var min_scale := 0.21
var max_scale := 0.4

func _ready():
	scale = Vector3(0.3,0.3,0.3)

func _process(_delta):
	readInputs()
	changeShape()
	pass
	
func readInputs():
	Q = Input.is_action_pressed("Q")
	W = Input.is_action_pressed("W")
	E = Input.is_action_pressed("E")
	
	if(Input.is_action_just_pressed("ScaleUp") && scale.x < max_scale):
		scale += scale_step
		position = Vector3(0,0,-3)
	if(Input.is_action_just_pressed("ScaleDown") && scale.x > min_scale):
		scale -= scale_step
		position = Vector3(0,0,-3)

func changeShape():
	
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
