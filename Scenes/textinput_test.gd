extends Node2D

@onready var singelton = get_node("/root/Singelton")
var right_option : bool 


func _on_line_edit_text_submitted(new_text):
	if new_text == "12" : 
		singelton.player_torch = true
		$".".hide() 
		singelton.xposplayer = -56
		singelton.yposplayer = -137
		get_tree().change_scene_to_file("res://Scenes/GameScenes/aufenthaltsraum_nacht.tscn")
		
	else: 
		singelton.player_torch = false 
		singelton.strike += 1 
		$".".hide() 
		get_tree().change_scene_to_file("res://Scenes/GameScenes/Zimmer_Aufwachraum.tscn")
	pass # Replace with function body.


func _on_object_interaction_collision_interaction_true():
	$".".show() 
	pass # Replace with function body.
