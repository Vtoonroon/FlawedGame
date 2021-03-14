extends KinematicBody2D

signal hit

export (int) var speed = 200

var target = Vector2()
var velocity = Vector2()

func _input(event):
	look_at(get_global_mouse_position())
	if event.is_action_pressed('click'):
		target += get_global_mouse_position()
		
	if event.is_action_pressed('kcilc'):
		target -= get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	if position.distance_to(target) > 0:
		velocity = move_and_slide(velocity)
		
		
func _on_Cal_body_entered(body):
	if body.is_in_group("Object"):
		body.levelC_activated()



