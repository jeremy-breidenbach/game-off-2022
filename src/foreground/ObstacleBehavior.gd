extends ForegroundScrollMovement


# signals
# enums
# constants
# exported variables
# public & private variables
# onready variables


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	move()
	despawn_when_outside_view()


func despawn_obstacle():
	if global_position.y < -100:
		# print("despawning obstacle!")
		queue_free()
