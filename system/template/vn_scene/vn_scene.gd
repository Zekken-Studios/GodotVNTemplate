extends Control

export var next_scene: PackedScene
export var timeline_name: String

func _process(_delta):
	if Input.is_action_just_pressed("ui_accept"):
		start_scene()

func start_scene():
	if !timeline_name:
		print("Error: No timeline.")
		return
	
	var dialog = Dialogic.start(timeline_name)
	dialog.connect("timeline_end", self, "next_scene")
	add_child(dialog)

func next_scene(_timeline_name):
	TransitionManager.transition_to_scene(
		next_scene,
		
		{
			"label": "Week 0 - Day 0",
			"title": "From Zero to One",
			"subtitle": "Small steps achieve big things"
		}
	)
