extends Node2D

func _process(delta: float) -> void:
	var mouse_position = get_global_mouse_position()
	var rotation_angle = global_position.angle_to_point(mouse_position)
	rotation = rotation_angle
