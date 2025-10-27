extends CharacterBody2D

signal update_ui(position)

const SPEED = 300.0
const JUMP_VELOCITY = -800.0
var jumps = 0
const MAX_JUMP = 2

var save_file_path = "user://save/"
var save_file_name = "PlayerSave.tres"
var playerData = PlayerData.new()


func _process(delta):
	if Input.is_action_just_pressed("save"):
		save()
	if Input.is_action_just_pressed("load"):
		load_data()
	emit_signal("update_ui", self.position)
	playerData.UpdatePos(self.position)
	
func on_start_load():
	self.position = playerData.SavePos

func load_data():
	playerData = ResourceLoader.load(save_file_path + save_file_name).duplicate(true)
	on_start_load()
	print("loaded")
func save():
	ResourceSaver.save(playerData, save_file_path + save_file_name)
	print("save")


func _ready():
	verify_save_directory(save_file_path)
	
func verify_save_directory(path: String):
	DirAccess.make_dir_absolute(path)

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
