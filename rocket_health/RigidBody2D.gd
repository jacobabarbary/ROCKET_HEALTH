extends RigidBody2D

export var speed = 10
export var angular_speed = 0.1
export var health = 600.0
export var max_velocity = 500

func _physics_process(delta):
	
	if Input.is_action_pressed("ui_up") and health > 0:
		linear_velocity += Vector2(0,1).rotated(rotation) * -speed
		health += -1
		get_node("rocket_sprite").frame = 1
	else:
		get_node("rocket_sprite").frame = 0
	
	if Input.is_action_pressed("ui_left"):
		angular_velocity = -angular_speed
	if Input.is_action_pressed("ui_right"):
		angular_velocity = angular_speed
	
	
	linear_velocity = linear_velocity.clamped(max_velocity)
	
	if health == 0:
		get_tree().reload_current_scene()
