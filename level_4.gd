extends Node2D

@onready var layout_a = $TileMapLayer1
@onready var layout_b = $TileMapLayer2
var current_layout = "A"

func _ready():
	activate_layout_a()

func _input(event):
	if event.is_action_pressed("Swap"):
		if current_layout == "A":
			activate_layout_b()
		else:
			activate_layout_a()

func activate_layout_a():
	# Enable A
	layout_a.visible = true
	layout_a.collision_enabled = true
	layout_a.process_mode = Node.PROCESS_MODE_INHERIT
	
	# Disable B
	layout_b.visible = false
	layout_b.collision_enabled = false
	layout_b.process_mode = Node.PROCESS_MODE_DISABLED
	
	current_layout = "A"

func activate_layout_b():
	# Disable A
	layout_a.visible = false
	layout_a.collision_enabled = false
	layout_a.process_mode = Node.PROCESS_MODE_DISABLED
	
	# Enable B
	layout_b.visible = true
	layout_b.collision_enabled = true
	layout_b.process_mode = Node.PROCESS_MODE_INHERIT
	
	current_layout = "B"
	
func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
