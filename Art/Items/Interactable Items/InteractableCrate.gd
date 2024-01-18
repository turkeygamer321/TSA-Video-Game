extends StaticBody2D


@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D


func _ready():
	interaction_area.interact = Callable(self, "_search_crate")


#func _search_crate():
	#sprite.frame = 1 if sprite.frame == 0 else 0
