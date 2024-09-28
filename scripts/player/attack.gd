extends Area2D

var bullet_direction: Vector2
var speed: float = 7.0

func _physics_process(delta: float) -> void:
	position -= bullet_direction * speed * delta * 100.0


func _on_body_entered(body: Node2D) -> void:
	if body.is_in_group("enemies"):
		body.queue_free()
	queue_free()
