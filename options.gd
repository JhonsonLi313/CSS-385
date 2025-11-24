extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_audio_pressed() -> void:
	print("Audio, doesn't do anything yet")


func _on_graphics_pressed() -> void:
	print("Graphics, doesn't do anything yet")


func _on_controls_pressed() -> void:
	print("Controls, doesn't do anything yet")


func _on_back_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
