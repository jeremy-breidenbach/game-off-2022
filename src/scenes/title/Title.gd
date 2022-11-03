extends Node

onready var play_button = $"%PlayButton"
onready var instructions_button = $"%InstructionsButton"
onready var credits_button = $"%CreditsButton"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_CreditsButton_pressed():
	SceneChanger.change_scene("res://src/scenes/credits/Credits.tscn", 0.25)
