extends Area2D


func _ball_scored(area: Area2D) -> void:
	get_tree().reload_current_scene()
