extends Area3D

var pasos:int
var selectedShape
@onready var spriteConejo = $SpriteConejoHolder/SpriteConejo as Sprite3D
var possibleScales = [0.2,0.3,0.4]
var selectedScale: float

# Called when the node enters the scene tree for the first time.
func _ready():
	selectedShape = ShapesConstants.allShapesArray.pick_random()
	spriteConejo.texture = selectedShape["negro"]
	selectedScale = possibleScales.pick_random()
	$SpriteConejoHolder.scale = Vector3(selectedScale, selectedScale, selectedScale)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	position = position.move_toward(Vector3(0,0,-1.5),.05)

func _on_body_entered(body):
	if(body.currentShape["nombre"] == selectedShape["nombre"] && selectedScale == snapped(body.scale.x, 0.1)):
		GameManager.increase_score(10)
		print("SCORE!")
	else:
		GameManager.decrease_score(10)
		print("MISS!")
		print("Current Score: ", GameManager.player_score)
	queue_free()
