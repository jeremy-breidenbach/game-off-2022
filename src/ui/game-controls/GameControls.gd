# class_name

extends CanvasLayer


# signals
# enums
# constants
# exported variables
# public & private variables
# onready variables


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.show_mobile_buttons:
		visible = true
	else:
		visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

