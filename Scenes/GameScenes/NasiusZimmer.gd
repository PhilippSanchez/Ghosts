extends Node2D

@onready var singelton = get_node("/root/Singelton")
# Called when the node enters the scene tree for the first time.
func _ready():
	singelton.entered_nasius = false 
	if singelton.has_pipe == true:
		$TileMap/soulmap.show()
		
	if singelton.has_pipe == false:
		$TileMap/soulmap.queue_free()
	


func _on_object_interaction_collision_2_interaction_null():
	
	pass # Replace with function body.


func _on_object_interaction_collision_2_interaction_false(): 
	singelton.has_pipe = true 
	get_tree().change_scene_to_file("res://Scenes/GameScenes/Cutscene_smoking_nasius.tscn")
	
	
	pass # Replace with function body.
