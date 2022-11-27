# class_name

extends CanvasLayer


# signals
# enums
# constants
# exported variables
# public & private variables
var is_paused = false

# onready variables
onready var birds_hit_counter = $"%BirdsHitCounter"
onready var black_overlay = $BlackOverlay
onready var continue_button = $"%ContinueButton"
onready var continue_button_container = $"%ContinueButtonContainer"
onready var friends_saved_counter = $"%FriendsSavedCounter"
onready var pause_menu_label = $"%PauseMenuLabel"
onready var pause_popup = $PausePopup
onready var scores_container = $"%ScoresContainer"

func _input(event):
	if event.is_action_pressed("pause_game"):
		toggle_pause()
		pause_popup.popup_centered()


func _ready():
	Scores.connect("player_died", self, "update_pause_menu_player_dead")


func _on_ContinueButton_pressed():
	toggle_pause()
	pause_popup.visible = is_paused


func _on_RestartButton_pressed():
	Scores.friends_saved = 0
	Scores.distance_traveled = 0
	Global.goto_scene("res://src/scenes/level-1/Level1.tscn")
	toggle_pause()
	pause_popup.visible = is_paused


func _on_MainMenuButton_pressed():
	Scores.birds_hit = 0
	Scores.friends_saved = 0
	Scores.distance_traveled = 0
	Global.goto_scene("res://src/scenes/title/Title.tscn")
	toggle_pause()
	pause_popup.visible = is_paused
	

func toggle_pause():
	is_paused = !is_paused
	black_overlay.visible = is_paused
	get_tree().paused = is_paused


func update_pause_menu_player_dead():
	birds_hit_counter.text = String(Scores.birds_hit)
	friends_saved_counter.text = String(Scores.friends_saved)
	pause_menu_label.text = "Game Over"
	continue_button_container.visible = false
	scores_container.visible = true
	toggle_pause()
	pause_popup.popup_centered()



