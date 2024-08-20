extends TextureButton

@onready var creditsNode = $"../../Credits"



func _on_pressed():
	creditsNode.visible = true
