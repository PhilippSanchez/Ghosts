extends Node2D

func _ready():
	$VideoStreamPlayer.play() 
	$"Player walking".play() 
	$CanvasLayer/ObjectInteractionsDialog.start() 


func _on_player_walking_finished():
		$"Player walking".play() 



func _on_video_stream_player_finished():
		$VideoStreamPlayer.play() 


func _on_object_interactions_dialog_dialogue_ended():
		get_tree().change_scene_to_file("res://Scenes/GameScenes/NasiusZimmer.tscn")

