extends Button

@onready var waitTimer: Timer = $Timer

func _ready():
	pressed.connect(_on_pressed)
	pass
	
func _on_pressed():
	icon
	pass
	
func _on_timer_timeout():
	pass
