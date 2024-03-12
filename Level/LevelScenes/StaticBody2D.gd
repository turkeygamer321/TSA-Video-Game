extends StaticBody2D


@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D


func _ready():
	interaction_area.interact = Callable(self, "_search")

# FIXME: inventory
func _search():
	pass
	#hide()
