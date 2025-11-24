extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Label.text = "SCORE: " + str(Global.score)
