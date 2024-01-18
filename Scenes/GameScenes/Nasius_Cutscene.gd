extends Node2D
var play_video_noise = true  
@onready var crying = $Nasius_crying
@onready var idel = $"Player Idel"
@onready var walking = $"Player walking"

var next_scene = "res://Scenes/GameScenes/NasiusZimmer.tscn"



var resize = false 

# Called when the node enters the scene tree for the first time.
func _ready():
	crying.play()
	$CanvasLayer/ObjectInteractionsDialog.start() 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

func _on_object_interactions_dialog_dialogue_ended():
	
	get_tree().change_scene_to_file(next_scene)
	pass # Replace with function body.



func _on_object_interactions_dialog_dialogue_signal(value):
	if value == "true" : 
		crying.stop() 
		idel.play() 
	if value == "false" : 
		idel.stop() 
		
	if value == "null" : 
		idel.stop()
		crying.play() 
		
	


func _on_nasius_crying_finished():
	crying.play() 
	pass # Replace with function body.


func _on_player_idel_finished():
	idel.play() 
	pass # Replace with function body.
