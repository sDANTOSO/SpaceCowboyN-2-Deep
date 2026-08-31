extends StaticBody2D

class_name BreakableTile

#@export var tilemap:SNOWTILEMAP
#var all_tile_zero_cells = tilemap.get_used_cells_by_id(0)
#var hello tilemap.get_used_cells_by_id(0)
#Array tilemap.get_used_cells()

@onready var snowtilemap: TileMapLayer =$"../Area2D2/SNOWTILEMAP/SnowLayer"

func destroy_tile_at_world_position(world_pos) -> void:
	# Convert world coordinates to map/grid coordinates
	var map_pos = snowtilemap.local_to_map(snowtilemap.to_local(world_pos))
	#print(map_pos)
	# Check if a tile actually exists there
	var vector2i = Vector2i(736,313) 
	#$"../Area2D2/SNOWTILEMAP/SnowLayer".erase_cell(Vector2i(720, 273))
	#func void erase_cell(snowtilemap,vector2i)
	SetCell(0,vector2i);
	print(vector2i)
	#layer: int, coords: Vector2i
	
	#if tile_map_layer.get_cell_source_id(map_pos) != -1:
		
		# Remove the tile by setting source ID to -1 (or use erase_cell)
		#tile_map_layer.set_cell(map_pos, -1)
		
func break_tile():
	pass
	#tilemap.set_cell(0,tilemap.local_to_map(global_position))
	#queue_free()


func _on_area_2d_3_body_entered(body: Node2D) -> void:
	pass
	#for i in get_used_cells(): 
	 #sets all tile zero cells to tile one
		#tilemap.set_cell(0,tilemap.local_to_map(global_position))
		#queue_free()
	#pass # Replace with function body.


#func _on_main_character_breakblock() -> void:
	#


func _on_main_character_breakblock(direction2) -> void:
	
	destroy_tile_at_world_position(direction2)
