extends Area2D
@export var scenename ="" 
@onready var singelton = get_node("/root/Singelton")

@export var xposition_player : float 
@export var yposition_player : float 


func _on_body_entered(body):
	if body.is_in_group("Player"):
		if singelton.player_torch == true: 
			get_tree().change_scene_to_file("res://Scenes/GameScenes/gang_erdgeschoss_nacht.tscn")
			singelton.xposplayer = xposition_player
			singelton.yposplayer = yposition_player
		else: 
			get_tree().change_scene_to_file("res://Scenes/GameScenes/gang_erdgeschoss.tscn")
			singelton.xposplayer = xposition_player
			singelton.yposplayer = yposition_player

