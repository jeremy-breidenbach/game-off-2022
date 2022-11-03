extends Node

onready var back_button = $"%BackButton"

func _on_BackButton_pressed():
	SceneChanger.change_scene("res://src/scenes/title/Title.tscn", 0.25)
