extends CanvasLayer

var next_scene: PackedScene

func transition_to_scene(scene: PackedScene, data: Dictionary):
	
	if !scene:
		
		# Remove from the content inside the *---* marks if you don't want to go to the back menu after not having a next_scene.
		#*---*
		print("Exited from ", get_tree().current_scene.name, " to Main Menu.")
		print("Reason: There was no next_scene")

		get_tree().change_scene("res://system/ui/main_menu/main_menu.tscn")
		#*---*
		
		
		return
	

	var transition_scene = load("res://system/ui/scene_transition/scene_transition.tscn")

	var current_transition = transition_scene.instance()
	
	next_scene = scene

	current_transition.label_text = data.label
	current_transition.title_text = data.title
	current_transition.subtitle_text = data.subtitle

	self.add_child(current_transition)
	
	current_transition.connect("showing_transition", self, "change_scene")
	current_transition.connect("finished_transition", self, "run_scene")


func change_scene():
	get_tree().change_scene_to(next_scene)


func run_scene():
	get_tree().current_scene.start_scene()


func cleanse_child():
	var children = get_children()
	
	for child in children:
		child.queue_free()
