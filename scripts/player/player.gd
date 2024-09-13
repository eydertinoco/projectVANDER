extends CharacterBody2D
@export_category("movement")
@export var speed: float = 3

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D

var input = Vector2(0, 0)
var is_running: bool = false

func _process(delta: float) -> void:
	GameManager.player_position = position

func _physics_process(delta: float) -> void:
	read_input()
	move()
	rotate_sprite()

func read_input() -> void:
	input = Input.get_vector("move_left","move_right","move_up","move_down")

func move() -> void:
	# Calculo da velocidade
	var player_velocity = input * speed * 100
	velocity = lerp(velocity, player_velocity, 0.30)
	move_and_slide()
	
	# Atualiza a variável is_running
	var was_running = is_running
	is_running = not input.is_zero_approx()
	
	# Tocar animação
	if was_running != is_running:
		if is_running:
			animation_player.play("run")
		else:
			animation_player.play("idle")

func rotate_sprite() -> void:
	# Girar o sprite
	if input.x > 0:
		sprite_2d.flip_h = false
	elif input.x < 0:
		sprite_2d.flip_h = true
