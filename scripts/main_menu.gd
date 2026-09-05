extends Control

@onready var start_button: Button = $Buttons_Manger/Start
@onready var quit_button: Button = $Buttons_Manger/Quit

func _ready() -> void:
	start_button.pressed.connect(_on_start_pressed)
	quit_button.pressed.connect(_on_quit_pressed)

func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/levels/trust_level_1.tscn")

func _on_quit_pressed() -> void:
	get_tree().quit()
