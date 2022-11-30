# class_name

extends Node2D


# signals
# enums
enum Direction {
	LEFT,
	RIGHT
}

enum State {
	MOVE,
	DEATH,
	FALL
}

# constants
# exported variables
export var scroll_speed = 15

# public & private variables
var move_direction = Direction.LEFT
var state = State.MOVE

# onready variables
onready var animation_player = $AnimationPlayer
onready var area_2d = $Area2D
onready var sprite = $Sprite
onready var timer = $Timer


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	if global_position.x < 0:
		move_direction = Direction.RIGHT
		sprite.flip_h = true
	animation_player.play("Fly")


func _physics_process(_delta):
	if state == State.MOVE:
		move()
	if state == State.FALL:
		position.y += 25
	despawn_when_outside_view()


func _on_Area2D_body_entered(_body):
	area_2d.set_deferred("monitoring", false)
	state = State.DEATH
	Scores.birds_hit += 1
	Scores.total_score += 50
	animation_player.play("Death")
	timer.start(0.5)


func _on_Timer_timeout():
	animation_player.play("Fall")
	state = State.FALL


func _on_AnimationPlayer_animation_finished(anim_name):
	if anim_name == "Death":
		animation_player.stop()


func move():
	if move_direction == Direction.LEFT:
		position.x -= scroll_speed
	else:
		position.x +=  scroll_speed

	position.y -= 10


func despawn_when_outside_view():
	if move_direction == Direction.LEFT:
		if global_position.x < -200:
			# print("despawing")
			queue_free()
	else:
		if global_position.x > 1800:
			queue_free()
	if global_position.y > 2300:
		# print("despawning after falling")
		queue_free()
