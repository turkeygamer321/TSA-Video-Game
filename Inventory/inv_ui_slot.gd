extends Panel

@onready var item_visual: TextureRect = $CenterContainer/Panel/item_display

func update(slot: InvSlot):
	if !slot.item:
		item_visual.visible = false
	else:
		item_visual.visible = true
		item_visual.texture = slot.item.texture
