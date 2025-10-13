extends CharacterBody2D

const SPEED = 300.0
const JUMP_VELOCITY = -800.0
var jumps = 0
const MAX_JUMP = 2


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	if is_on_floor():
		jumps = 0
	if Input.is_action_just_pressed("ui_jump") and jumps < MAX_JUMP:
		velocity.y = JUMP_VELOCITY
		jumps += 1
	
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()

func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	get_tree().change_scene_to_file("res://level2.tscn")
