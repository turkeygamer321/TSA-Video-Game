extends Area2D


var entered = false

func _on_body_entered(body: PhysicsBody2D):
	entered = true


func _on_body_exited(body):
	entered = false
	
	
func _process(delta):
	if entered == true:
		get_tree().change_scene_to_file("res://Level/L2.tscn")
#	if Input.is_action_just_pressed("ui_accept"): will make it so you have to click enter to change scenes
