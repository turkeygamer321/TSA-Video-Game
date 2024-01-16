extends CharacterBody2D


@export var moves_speed : float = 300

func _physics_process(_delta):
	# Get input direction
	var input_direction = Vector2(
		Input.get_action_strength("right") - Input.get_action_strength("left"),
		Input.get_action_strength("down") - Input.get_action_strength("up")
	)
	
	#Update velocity
	velocity = input_direction * moves_speed
	velocity.normalized()
	
	#Move and Slide function uses velocity of character body to move character on map
	move_and_slide()
	
