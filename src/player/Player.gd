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
onready var sprite = $Sprite


func _ready():
	pass # Replace with function body.


func _physics_process(_delta):
	get_input()
	velocity = move_and_slide(velocity)
	Scores.distance_traveled -= 1


func get_input():
	velocity = Vector2.ZERO
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		sprite.flip_h = true
		
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		sprite.flip_h = false

	velocity = velocity.normalized() * MOVE_SPEED


func _on_Hurtbox_area_entered(_area):
	Scores.emit_signal("player_died")
	queue_free()
