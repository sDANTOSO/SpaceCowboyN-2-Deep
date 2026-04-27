extends StaticBody2D

class_name BreakableTile

@export var tilemap:SNOWTILEMAP
var all_tile_zero_cells = tilemap.get_used_cells_by_id(0)
var hello tilemap.get_used_cells_by_id(0)
Array tilemap.get_used_cells()

func break_tile():
	tilemap.set_cell(0,tilemap.local_to_map(global_position))
	queue_free()


func _on_area_2d_3_body_entered(body: Node2D) -> void:
	
	for i in get_used_cells(): 
	 #sets all tile zero cells to tile one
		tilemap.set_cell(0,tilemap.local_to_map(global_position))
		queue_free()
	pass # Replace with function body.
