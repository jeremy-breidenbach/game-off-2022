# class_name

extends CanvasLayer


# signals
# enums
# constants
# exported variables
# public & private variables
# onready variables
onready var distance_count_label = $"%DistanceCountLabel"
onready var friends_saved_label = $"%FriendsSavedLabel"


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	distance_count_label.text = String(Scores.distance_traveled)
	friends_saved_label.text = String(Scores.friends_saved)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
	#pass
	
func _physics_process(_delta):
	distance_count_label.text = String(Scores.distance_traveled)
	friends_saved_label.text = String(Scores.friends_saved)
