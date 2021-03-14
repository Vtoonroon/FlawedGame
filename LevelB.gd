extends Node2D


func _ready():
	pass 
	


func _on_N3VisiblerTimer_timeout():
	$N3.show()


func _on_N4VisiblerTimer_timeout():
	$N4.show()


func _on_ChangeScene2Timer_timeout():
	if get_tree().change_scene("res://LevelC.tscn") != OK:
		print("An unexpected error occured when trying to switch to the LevelC scene")
