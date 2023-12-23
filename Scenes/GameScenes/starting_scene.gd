extends Node2D
var play_video_noise = true  
@onready var eyes_mov = $BAckground_eyes
@onready var noise_mov = $Background_black
var next_scene = preload("res://Scenes/GameScenes/Zimmer_Aufwachraum.tscn").instantiate()



var resize = false 

# Called when the node enters the scene tree for the first time.
func _ready():
	noise_mov.play() 
	
	$CanvasLayer/ObjectInteractionsDialog.start() 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass





func _on_object_interactions_dialog_dialogue_signal(value):
	print(value)
	if value == "true": 
		play_video_noise = false 
	
		eyes_mov.play() 
		
	
		
	pass # Replace with function body.


func _on_background_black_finished():
	if play_video_noise == true: 
		noise_mov.play() 
	
	pass # Replace with function body.


func _on_b_ackground_eyes_finished():
	eyes_mov.play() 
	pass # Replace with function body.


func _on_object_interactions_dialog_dialogue_ended():
	eyes_mov.stop()
	get_tree().root.add_child(next_scene)
	pass # Replace with function body.
