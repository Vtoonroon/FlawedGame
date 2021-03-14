extends Node2D

var laserarr

func _ready():
	laserarr = get_tree().get_nodes_in_group("laser")
var timer=0


func _process(delta):
	if timer==0:
		for laser in laserarr:
			laser.visible = randi() % 2 == 0
		timer=30
	timer-=int(timer>0)
	



func _on_N6VisibleTimer_timeout():
	$N5.hide()
	$N6.show()


func _on_ChangetoNarratorTimer_timeout():
	if get_tree().change_scene("res://Narrator.tscn") != OK:
		print("An unexpected error occured when trying to switch to the Narrator scene")

