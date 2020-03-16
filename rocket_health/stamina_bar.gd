extends Sprite


func _process(delta):
	scale.x = get_parent().health / 1200
	scale.clamped(50)
	
