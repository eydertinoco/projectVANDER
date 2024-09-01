extends CharacterBody2D

@export var speed: float = 3

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D

var is_running: bool = false

func _physics_process(delta: float) -> void:
	move()

func move() -> void:
	# Obtem o vetor das inputs ((W,A,S,D) ou setas)
	var input_vector = Input.get_vector("move_left","move_right","move_up","move_down")
	
	# Calculo da velocidade
	var player_velocity = input_vector * speed * 100
	velocity = lerp(velocity, player_velocity, 0.05)
	move_and_slide()
	
	# Atualiza a variável is_running
	var was_running = is_running
	is_running = not input_vector.is_zero_approx()
	
	# Tocar animação
	if was_running != is_running:
		if is_running:
			animation_player.play("run")
		else:
			animation_player.play("idle")
	
	# Girar o sprite
	if input_vector.x > 0:
		sprite_2d.flip_h = false
	elif input_vector.x < 0:
		sprite_2d.flip_h = true
