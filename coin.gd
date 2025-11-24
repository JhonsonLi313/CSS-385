extends Area2D

signal coin_collected

func _on_body_entered(body: Node2D) -> void:
	queue_free()
	emit_signal("coin_collected")
	Global.score += 1
