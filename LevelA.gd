extends Node2D


export var Enemies = preload("res://a/Enemies.tscn")

func _ready():
	randomize()


func _on_EnemiesSpawnTimer_timeout():
	$EnemiesPath/EnemiesSpawnLocation.offset = randi()
	var enemies = Enemies.instance()
	add_child(enemies)
	var direction = $EnemiesPath/EnemiesSpawnLocation.rotation + PI / 2
	enemies.position = $EnemiesPath/EnemiesSpawnLocation.position
	direction += rand_range(-PI / 4, PI / 4)
	enemies.rotation = direction
	enemies.linear_velocity = Vector2(rand_range(enemies.min_speed, enemies.max_speed), 0)
	enemies.linear_velocity = enemies.linear_velocity.rotated(direction)



func _on_N1VisibleTimer_timeout():
	$N1.show()

func _on_N2VisibleTimer_timeout():
	$N2.show()


func _on_ButtonshowTimer_timeout():
	$N1.hide()
	$N2.hide()
	$DoNotPress.show()
