extends ColorRect

signal showing_transition
signal finished_transition


export var label_text: String
export var title_text: String
export var subtitle_text: String


onready var lbl = $"%Label" as Label
onready var title = $"%Title" as Label
onready var subtitle = $"%Subtitle" as Label


var label_array: Array


onready var parent = get_parent()


func _ready():
	label_array = [lbl, title, subtitle]
	hide_content()
	set_text()
	
	start_transition()


func hide_content():
	
	self.modulate = Color.transparent
	
	for node in label_array:
		node.percent_visible = 0.0


func start_transition():
	
	#var tween = create_tween()

	yield(fade_in(), "finished")

	if !parent:
		print("ERROR: Transition Manager is not this node's Parent.")
		pass
	
	else:
		emit_signal("showing_transition")


	for item in label_array:
		yield(show_text(item), "finished")


	yield(fade_out(), "finished")
	
	emit_signal("finished_transition")


func set_text():
	lbl.text = label_text
	title.text = title_text
	subtitle.text = subtitle_text


func show_text(node) -> Tween:
	var tween = create_tween()
	tween.tween_property(node, "percent_visible", 1.0, 1.5)
	return tween


func fade_in() -> Tween:
	var tween = create_tween()
	tween.tween_property(self, "modulate", Color.white, 2.0)
	return tween


func fade_out() -> Tween:
	var tween = create_tween()
	tween.tween_property(self, "modulate", Color.transparent, 1.0)
	return tween
