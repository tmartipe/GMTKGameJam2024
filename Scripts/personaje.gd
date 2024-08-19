extends CharacterBody3D

@onready var sprite = $Sprite3D
var currentShape: CompressedTexture2D
var currentScale: float = 0.1
var Q:bool
var W:bool
var E:bool
var scale_step = 0.1
var min_scale = 0.1
var max_scale = 0.5
	

func _process(_delta):
	readInputs()
	changeMaterial()
	pass
	
func readInputs():
	Q = Input.is_action_pressed("Q")
	W = Input.is_action_pressed("W")
	E = Input.is_action_pressed("E")
	
	if(Input.is_action_just_pressed("ScaleUp") && currentScale < max_scale):
		currentScale += scale_step
		set_object_scale()
		
	if(Input.is_action_just_pressed("ScaleDown") && currentScale > min_scale):
		currentScale -= scale_step
		set_object_scale()
		
func set_object_scale():
	sprite.scale = Vector3(currentScale, currentScale, currentScale)
	
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
