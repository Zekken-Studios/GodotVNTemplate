# Features

- Basic Main Menu
- VNScene is a template you can create scenes from.
- Uses PackedScenes and strings to run the scenes.
- Change Scenes through "TransitionManager" singleton.
- SceneTransition emits signals when Showing and Finished.


# About / WIP

This Template was made with the purpose of keeping a quickstart for Visual Novel games. It is powered with DIALOGIC

"vn_scene.tscn" uses a PackedScene for the next scene, and a Timeline_Name to call it's own dialogue once started.

VNScene starts after finishing a Transition.

TransitionManager is an AutoLoad Singleton that instances the SceneTransition's PackedScene, this child emits two signals:

- showing_transition: Notifies the TransitionManager that the background is hiding under the text.
- finished_transition: After fading away, notifies the TransitionManager that it can now start running the next Dialogue.


# Licensing

This Template respects the use of MIT License. You are free to use this template in every kind of project with no consequences, modify everything you want, and is not needed to ask for permission of use. Have fun!


## Artists
FOR REMOVAL, CONTACT
You can visualize the list of assets used in this pack in:
https://itch.io/c/3283500/vntemplate


## Dialogic
This Template works thanks to [Dialogic 1.4.5](https://github.com/coppolaemilio/dialogic/releases/tag/1.4.5). It is instanced to this repository with the allowance from the [MIT Licensing](https://github.com/coppolaemilio/dialogic/blob/main/LICENSE).




