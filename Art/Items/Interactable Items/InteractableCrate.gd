extends StaticBody2D


@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D


func _ready():
	interaction_area.interact = Callable(self, "_search")


func _search():
	sprite.frame = 1 if sprite.frame == 0 else 0