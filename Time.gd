extends Node2D

func _ready():
	pass 


func _on_ChangetoLevelATimer_timeout():
	pass # Replace with function body.
	if get_tree().change_scene("res://LevelA.tscn") != OK:
		print("An unexpected error occured when trying to switch to the LevelA scene")

