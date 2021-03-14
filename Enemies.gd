extends RigidBody2D

export var min_speed = 150  
export var max_speed = 250 

func _ready():
	var enemies_type = get_node("Sprite")



func _on_Cal_hit():
	$Cal.queue_free()
	emit_signal("hit")
	if get_tree().change_scene("res://a/Deathscreen.tscn") != OK:
		print("An unexpected error occured when trying to switch to the Deathscreen scene")
