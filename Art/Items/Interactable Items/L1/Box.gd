extends StaticBody2D

@onready var interaction_area = $InteractionArea
@onready var sprite = $Sprite2D
@export var item: InvItem
var player = null



func _ready():
	interaction_area.interact = Callable(self, "_search")


func _search():
	sprite.frame = int(sprite.frame == 0)
	
#	player = StaticBody2D
#	player.collect(item)
	
