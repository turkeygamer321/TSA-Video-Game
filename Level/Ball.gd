extends Sprite2D

@onready var path_follow := get_parent()
@export var speed := 720

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):
	if position.y == -252.731:
		return

	path_follow.progress += speed * delta
