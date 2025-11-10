extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_quit_to_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")


func _on_button_body_entered(body: Node2D):
	if $Button/AnimatedSprite2D.frame == 0:
		$Button/AnimatedSprite2D.frame = 1
		$Drawbridge/AnimationPlayer.play("Fall Down")

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
