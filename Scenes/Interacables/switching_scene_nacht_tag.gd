extends Area2D
@export var scenename ="" 
@onready var singelton = get_node("/root/Singelton")

func _on_body_entered(body):
	if body.is_in_group("Player"):
		if singelton.player_torch == true: 
			get_tree().change_scene_to_file("res://Scenes/GameScenes/gang_erdgeschoss_nacht.tscn")
		else: 
			get_tree().change_scene_to_file(scenename)
		

