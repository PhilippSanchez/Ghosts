extends Node2D

@onready var singelton = get_node("/root/Singelton")
# Called when the node enters the scene tree for the first time.
func _ready():
	singelton.entered_nasius = false 
	
	
	
	
#	$Timer.start()

#func _on_timer_timeout():
#	get_tree().change_scene_to_file("res://Scenes/GameScenes/office_scene.tscn")
