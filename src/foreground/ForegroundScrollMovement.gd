class_name ForegroundScrollMovement

extends Node2D


# signals
# enums
# constants
# exported variables
export var scroll_speed = 15

# public & private variables
# onready variables


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass


func move():
	position.y -= scroll_speed
