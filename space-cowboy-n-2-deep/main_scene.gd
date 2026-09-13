extends Node2D
var snowball_scene = preload("res://snowball.tscn")

func _on_start_point_avalanchestart(pos: Variant) -> void:
	create_snow(pos)
	
func create_snow(pos):
	
	var snowball = snowball_scene.instantiate()
	
	snowball.position = pos
	#var snowball1 = snowball
	#$Snowballs.add_child(snowball)
	
	print("instantiated")
	snowball.add_to_group("Snowball")
	await get_tree().create_timer(1.5).timeout
	print(snowball.position)
