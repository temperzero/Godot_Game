extends Node2D

var Cherry = preload("res://Collectibles/Cherry.tscn")



func _on_timer_timeout():
	var cherryTemp = Cherry.instantiate()
	var rng = RandomNumberGenerator.new()
	var randint = rng.randi_range(50, 600)
	cherryTemp.position = Vector2(randint,450)
	add_child(cherryTemp)
