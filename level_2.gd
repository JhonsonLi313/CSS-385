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
<<<<<<< Updated upstream
=======
		
func _on_button_body_entered(body: Node2D):
	if $Button/AnimatedSprite2D.frame == 0:
		$Button/AnimatedSprite2D.frame = 1
		$Drawbridge/AnimationPlayer.play("Fall Down")
	

func _ready():
	var tween = create_tween()
	var music_player = Persistentmusic.get_node("AudioStreamPlayer2D")
	tween.tween_property(music_player, "volume_db", -80, 0.5)
	tween.tween_callback(music_player.stop)
	
	var cutscene = preload("res://Cutscene.tscn").instantiate()
	add_child(cutscene)
	
	var video_player = cutscene.get_node("VideoStreamPlayer")
	video_player.size = Vector2(1152, 648)
	if cutscene_video:
		video_player.stream = cutscene_video
	video_player.play()
	video_player.finished.connect(_on_cutscene_finished.bind(cutscene, music_player))
	
	if cutscene_music:
		var cutscene_music_player = cutscene.get_node("cutscene_music")
		cutscene_music_player.stream = cutscene_music
		cutscene_music_player.play()
	

func _on_cutscene_finished(cutscene, music_player):
	cutscene.queue_free()

	music_player.volume_db = -80
	music_player.play()
	var tween = create_tween()
	tween.tween_property(music_player, "volume_db", 0, 0.5)

func _on_menu_button_pressed() -> void:
	get_tree().change_scene_to_file("res://main_menu.tscn")
>>>>>>> Stashed changes
