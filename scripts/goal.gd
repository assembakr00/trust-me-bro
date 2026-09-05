extends Area2D

@onready var timer: Timer = $Timer

func _ready() -> void:
	timer.wait_time = 1.2
	body_entered.connect(_on_body_entered)
	timer.timeout.connect(_on_timer_timeout)

func _on_body_entered(_body: Node2D) -> void:
	if _body.is_in_group("player"):
		print("Something entered me: ", _body.name)
		print("Good job You Passed!!!")
		_show_result("LETS GOOOO!")
		timer.start()

func _show_result(message: String) -> void:
	var overlay_layer := CanvasLayer.new()
	overlay_layer.layer = 100

	var background := ColorRect.new()
	background.color = Color(0.0, 0.0, 0.0, 0.72)
	background.mouse_filter = Control.MOUSE_FILTER_IGNORE
	background.anchor_left = 0.0
	background.anchor_top = 0.0
	background.anchor_right = 1.0
	background.anchor_bottom = 1.0
	background.offset_left = 0
	background.offset_top = 0
	background.offset_right = 0
	background.offset_bottom = 0
	overlay_layer.add_child(background)

	var label := Label.new()
	label.text = message
	label.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	label.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	label.add_theme_font_size_override("font_size", 56)
	label.add_theme_color_override("font_color", Color(1.0, 1.0, 1.0))
	label.add_theme_constant_override("outline_size", 4)
	label.anchor_left = 0.0
	label.anchor_top = 0.0
	label.anchor_right = 1.0
	label.anchor_bottom = 1.0
	label.offset_left = 0
	label.offset_top = 0
	label.offset_right = 0
	label.offset_bottom = 0
	overlay_layer.add_child(label)
	add_child(overlay_layer)

func _on_timer_timeout() -> void:
		get_tree().reload_current_scene()