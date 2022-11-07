extends Node

onready var play_button = $"%PlayButton"
onready var instructions_button = $"%InstructionsButton"
onready var credits_button = $"%CreditsButton"
onready var credits_popup = $CreditsPopup
onready var instructions_popup = $InstructionsPopup


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_CreditsButton_pressed():
	credits_popup.popup_centered_ratio(0.8)


func _on_PlayButton_pressed():
	SceneChanger.change_scene("res://src/scenes/level-1/Level1.tscn", 0.25)


func _on_InstructionsButton_pressed():
	instructions_popup.popup_centered_ratio(0.8)


func _on_CloseInstructionsPopupButton_pressed():
	instructions_popup.visible = false


func _on_CloseCreditsButton_pressed():
	credits_popup.visible = false
