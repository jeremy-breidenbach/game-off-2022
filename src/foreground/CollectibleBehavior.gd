extends ForegroundScrollMovement


# signals
# enums
# constants
# exported variables
# public & private variables
# onready variables
onready var area_2d = $Area2D

# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	area_2d.connect("body_entered", self, "_on_Area2D_body_entered")


func _on_Area2D_body_entered(_body):
	Scores.friends_saved += 1
	queue_free()
