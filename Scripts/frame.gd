extends Area3D

var pasos:int
var selectedShape: Color
@onready var mesh_instance_3d = $MeshInstance3D

# Called when the node enters the scene tree for the first time.
func _ready():
	var newMaterial = StandardMaterial3D.new()
	#selectedShape = ShapesConstants.allShapesArray.pick_random()
	#newMaterial.albedo_color = selectedShape
	#mesh_instance_3d.set_surface_override_material(0, newMaterial)
	pasos = 0
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (Input.is_action_just_pressed("ScaleUp") || Input.is_action_just_pressed("ScaleDown")):
		position.z += 3
		pasos+=1
	if(pasos > 8):
		queue_free()


func _on_body_entered(body):
	if(body.currentShape == selectedShape):
		print("SCORE!")
	else:
		print("MISS!")
	queue_free()
