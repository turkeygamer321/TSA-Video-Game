extends CharacterBody2D


@export var moves_speed : float = 300
@export var starting_direction: Vector2 = Vector2(0, 1)

@export var inv: Inv

@onready var animation_tree = $AnimationTree
@onready var state_machine = animation_tree.get("parameters/playback")

func _ready():
	update_animation_parameter(starting_direction)

func _physics_process(_delta):
	# Get input direction
	var input_direction := Input.get_vector("left", "right", "up", "down")
	#Update velocity
	velocity = input_direction.normalized() * moves_speed
	
	update_animation_parameter(input_direction)
	
	#Move and Slide function uses velocity of character body to move character on map
	move_and_slide()
	
	pick_new_state()
	
func update_animation_parameter(move_input : Vector2):
	#dont change animation parameters if theres no move input
	animation_tree.set("parameters/Walk/blend_position", move_input)
	animation_tree.set("parameters/Idle/blend_position", move_input)

#Choose state based on what is happening with the player
func pick_new_state():
	if(velocity != Vector2.ZERO):
		state_machine.travel("Walk")
	else:
		state_machine.travel("Idle")

func collect(item):
	inv.insert(item)
