extends Area2D

export var current_world = 0

func _on_Area2D_body_entered(body):
	if body.name == "rocket":
		get_tree().change_scene("res://you won.tscn")
