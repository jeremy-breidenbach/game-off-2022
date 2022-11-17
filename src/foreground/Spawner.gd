# class_name

extends Node2D


# signals
# enums
# constants
# exported variables
export var respawn_time = 1.0
export (Array, PackedScene) var scenes

# public & private variables
var random_scene = RandomNumberGenerator.new()
var selected_scene_index = 0

# onready variables
onready var timer = $Timer


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	start_new_timer()


func start_new_timer():
	timer.start(respawn_time)


func _on_Timer_timeout():
	start_new_timer()
	print("timer timed out")
	random_scene.randomize()
	selected_scene_index = random_scene.randi_range(0, scenes.size()-1)
	print("selected_scene_index ", selected_scene_index)
	var tmp = scenes[selected_scene_index].instance()
	add_child(tmp)
