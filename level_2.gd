extends Node2D

var current_layer = 1

func _input(event):
	if event.is_action_pressed("Switch") and event.is_pressed():
		switch_realm()
		
func switch_realm():
	if current_layer == 1:
		$Layer1.visible = false
		$Layer2.visible = true
		current_layer = 2
	else:
		$Layer1.visible = true
		$Layer2.visible = false
		current_layer = 1
