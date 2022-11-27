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


func _physics_process(_delta):
	move()
	despawn_when_outside_view()


func move():
	position.y -= scroll_speed


func despawn_when_outside_view():
	if global_position.y < -100:
		# print("despawing item")
		queue_free()
