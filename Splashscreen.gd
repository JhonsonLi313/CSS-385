extends Node2D

func _ready():
	$Timer.wait_time = 2.0
	$Timer.start()
	
func _input(event):
	if event.is_pressed():
		get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_timer_timeout() -> void:
	print("Timer ended")
	get_tree().change_scene_to_file("res://main_menu.tscn")
