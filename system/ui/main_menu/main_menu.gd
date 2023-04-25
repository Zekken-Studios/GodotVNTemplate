extends Control


# Hello!

# Excuse me for making this menu so "Rigid".
# In the future I would like to make the social buttons more easy to modify.
# I wanted to leave the ColorRect nodes along with the Background and Logo, just in case you want to experiment with flat-colors and not textures.

export var starting_game_scene: PackedScene

var transition_texts: Dictionary = {
	"label": "Starting",
	"title": "This is a Demo",
	"subtitle": "Made by Axsajim"
}


# These are in the social menu. I let them here as exportables 
export var discord_link: String
export var github_link: String
export var itch_link: String


func _on_StartButton_pressed():
	TransitionManager.transition_to_scene(
		starting_game_scene,
		transition_texts
	)


func _on_LoadButton_pressed():
	pass # Replace with function body.


func _on_SettingsButton_pressed():
	pass # Replace with function body.


func _on_ExitButton_pressed():
	pass # Replace with function body.


func _on_ContinueButton_pressed():
	pass # Replace with function body.
