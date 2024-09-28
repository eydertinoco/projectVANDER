extends CharacterBody2D
@export_category("Movement")
@export var speed: float = 3.0

@export_category("Attacks Scenes")
@export var attacks: Array[PackedScene]

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Sprite2D = $Sprite2D

var input: Vector2 = Vector2(0, 0)
var is_running: bool = false
var mirror: bool = false

func _process(delta: float) -> void:
	GameManager.player_position = position

func _physics_process(delta: float) -> void:
	read_input()
	move()
	rotate_sprite()
	
	#if(Input.is_action_just_pressed("shoot")):
		#shoot()

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
		#if mirror:
			#marker_2d.position *= Vector2(-1,1)
			#mirror = false
	elif input.x < 0:
		sprite_2d.flip_h = true
		#if not mirror:
			#marker_2d.position *= Vector2(-1,1)
			#mirror = true

#func shoot() -> void:
	## Pega a posição da bala no vetor de cenas e instancia
	#var bullet = attacks[0].instantiate()
	## Adiciona a bala como filho da cena Player
	#add_child(bullet)
	#
	#bullet.position = marker_2d.position
	#bullet.bullet_direction = (position - get_global_mouse_position()).normalized()
	#bullet.rotation = marker_2d.rotation
