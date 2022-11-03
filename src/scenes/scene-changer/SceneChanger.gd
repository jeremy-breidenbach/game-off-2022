extends CanvasLayer

signal scene_changed()

onready var black = $Black
onready var animation_player = $AnimationPlayer

func change_scene(path, delay = 0.5):
	yield(get_tree().create_timer(delay), "timeout")
	animation_player.play("Fade")
	yield(animation_player, "animation_finished")
	Global.goto_scene(path)
	animation_player.play_backwards("Fade")
	yield(animation_player, "animation_finished")
	emit_signal("scene_changed")
