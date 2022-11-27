# class_name

extends Node


# signals
signal player_died

# enums
# constants
# exported variables
# public & private variables
var birds_hit = 0
var distance_traveled = 0
var friends_saved = 0
var is_player_alive = true


# onready variables


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass

func set_is_player_alive():
	is_player_alive = false
	emit_signal("player_died")
