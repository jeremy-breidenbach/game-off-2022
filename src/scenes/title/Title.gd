extends Node

onready var play_button = $"%PlayButton"
onready var credits_popup = $CreditsPopup
onready var instructions_popup = $InstructionsPopup
onready var settings_popup = $SettingsPopup
onready var show_mobile_check_button = $"%ShowMobileCheckButton"
onready var toggle_button_credits = $"%ToggleButtonCredits"


# Called when the node enters the scene tree for the first time.
func _ready():
	show_mobile_check_button.pressed = Global.show_mobile_buttons
	toggle_button_credits.connect("meta_clicked", self, "_on_RichTextLabel_meta_clicked")


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


func _on_SettingsButton_pressed():
	settings_popup.popup_centered_ratio(0.8) 


func _on_CloseSettingsButton_pressed():
	settings_popup.visible = false


func _on_CheckButton_toggled(button_pressed):
	Global.show_mobile_buttons = button_pressed


func _on_RichTextLabel_meta_clicked(meta):
	OS.shell_open(str(meta))
