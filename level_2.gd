extends Node2D

@export var cutscene_video: VideoStream
@export var cutscene_music: AudioStream
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

func _ready():
	Persistentmusic.get_node("AudioStreamPlayer2D").stop()

	var cutscene = preload("res://Cutscene.tscn").instantiate()
	add_child(cutscene)
	
	var video_player = cutscene.get_node("VideoStreamPlayer")
	video_player.stream = cutscene_video
	video_player.play()
	video_player.finished.connect(cutscene.queue_free)
	
	if cutscene_music:
		var music_player = cutscene.get_node("cutscene_music")
		music_player.stream = cutscene_music
		music_player.play()
