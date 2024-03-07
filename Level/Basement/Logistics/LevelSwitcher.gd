extends Area2D

# set -1 for prev 1 for next
@export var prev : int = 1

func _on_body_entered(body):
	if body.is_in_group("player"):
		var current_level := get_tree().current_scene.name
		var next_level := int(current_level.substr(1)) + (1 * prev)
		get_tree().change_scene_to_file("res://Level/LevelScenes/L%d.tscn" % next_level)
