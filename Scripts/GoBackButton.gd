extends TextureButton

@onready var parent = get_parent()

func _on_pressed():
	parent.visible = false
	pass # Replace with function body.
