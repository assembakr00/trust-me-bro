extends Area2D

@onready var timer: Timer = $Timer
var overlay_layer: CanvasLayer
var overlay_bg: ColorRect
var overlay_text: Label

func _ready() -> void:
	_setup_overlay()
	timer.wait_time = 1.2
	timer.timeout.connect(_on_timer_timeout)
	body_entered.connect(_on_body_entered)

func _setup_overlay() -> void:
	overlay_layer = CanvasLayer.new()
	overlay_layer.layer = 100

	overlay_bg = ColorRect.new()
	overlay_bg.color = Color(0.0, 0.0, 0.0, 0.72)
	overlay_bg.mouse_filter = Control.MOUSE_FILTER_IGNORE
	overlay_bg.anchor_left = 0.0
	overlay_bg.anchor_top = 0.0
	overlay_bg.anchor_right = 1.0
	overlay_bg.anchor_bottom = 1.0
	overlay_bg.offset_left = 0
	overlay_bg.offset_top = 0
	overlay_bg.offset_right = 0
	overlay_bg.offset_bottom = 0
	overlay_layer.add_child(overlay_bg)

	overlay_text = Label.new()
	overlay_text.text = "Really?!!"
	overlay_text.horizontal_alignment = HORIZONTAL_ALIGNMENT_CENTER
	overlay_text.vertical_alignment = VERTICAL_ALIGNMENT_CENTER
	overlay_text.add_theme_font_size_override("font_size", 56)
	overlay_text.add_theme_color_override("font_color", Color(1.0, 1.0, 1.0))
	overlay_text.add_theme_constant_override("outline_size", 4)
	overlay_text.anchor_left = 0.0
	overlay_text.anchor_top = 0.0
	overlay_text.anchor_right = 1.0
	overlay_text.anchor_bottom = 1.0
	overlay_text.offset_left = 0
	overlay_text.offset_top = 0
	overlay_text.offset_right = 0
	overlay_text.offset_bottom = 0
	overlay_layer.add_child(overlay_text)
	add_child(overlay_layer)
	overlay_layer.visible = false

func _on_body_entered(_body: Node2D) -> void:
	if _body.is_in_group("player"):
		print("Something entered me: ", _body.name)
		_show_result("Really?!!")
		timer.start()

func _show_result(message: String) -> void:
	overlay_text.text = message
	overlay_layer.visible = true

func _on_timer_timeout() -> void:
	get_tree().reload_current_scene()
