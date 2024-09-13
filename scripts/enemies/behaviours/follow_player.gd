extends CharacterBody2D

@export var speed: float = 1.0

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Calcula a posição do jogador
	var player_position = GameManager.player_position
	var difference = player_position - position
	var input_vector = difference.normalized()
	
	# Movimento dos inimigos
	velocity = input_vector * speed * 100.0
	move_and_slide()
	
	# Girar o sprite
	if input_vector.x > 0:
		animated_sprite_2d.flip_h = false
	elif input_vector.x < 0:
		animated_sprite_2d.flip_h = true
