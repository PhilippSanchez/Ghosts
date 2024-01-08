extends Area2D
@export var scenename ="" 
@export var xposition_player : float 
@export var yposition_player : float 
@onready var singelton = get_node("/root/Singelton") 


func _on_body_entered(body):
	
	if body.is_in_group("Player"):
		singelton.xposplayer = xposition_player
		singelton.yposplayer = yposition_player
		get_tree().change_scene_to_file(scenename)
		
		
