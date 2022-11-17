# class_name

extends KinematicBody2D

# signals

# enums

# constants

# exported variables
export(int) var MOVE_SPEED = 800

# public variables
var velocity = Vector2.ZERO

# private variables

# onready variables


func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)
	Scores.distance_traveled -= 1


func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
	if Input.is_action_pressed("move_right"):
		velocity.x += 1

	velocity = velocity.normalized() * MOVE_SPEED


func _on_Hurtbox_area_entered(area):
	queue_free()
