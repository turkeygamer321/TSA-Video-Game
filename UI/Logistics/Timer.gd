extends Control

@export var time = 300
@onready var colors = [Color.YELLOW, Color.RED]
@onready var red = false

signal timer_finished

func _on_timer_timeout():
	var text = "%d:%02d" % [floor(time / 60), int(time) % 60]
	$Label.set_text(text)
	time -= 1
	
	
	if (time < 30):
		red = !red
		$Label.set_modulate(colors[int(red)])
		$CameraShake.apply_shake()
	if (time == 0):
		get_tree().change_scene_to_file("res://UI/Game_Over.tscn")
		$Label.visible = false
		emit_signal("timer_finished")
