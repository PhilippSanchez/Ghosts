extends Node2D
@onready var singelton = get_node("/root/Singelton")

# Called when the node enters the scene tree for the first time.
func _ready():
	if singelton.entered_nasius == true : 
		$switching_scene.queue_free()
	
	
	if singelton.entered_nasius == false : 
		print("hit")
		$"Nasius_Tür/ObjectInteractionCollision".second_dialogue_name = "NasiusDoor2"
		$"Nasius_Tür/ObjectInteractionCollision".second_dialogue_true = true 
		$"Barriere Treppe".queue_free()
		
	
	if singelton.xposplayer: 
		$Player.position.x = singelton.xposplayer 
		$Player.position.y = singelton.yposplayer 
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_aufwachraum_tür_interaction_true():
	get_tree().change_scene_to_file("res://Scenes/GameScenes/Zimmer_Aufwachraum.tscn")
	singelton.aufwach_rätsel = false 
	singelton.xposplayer = 97
	singelton.yposplayer = 170
	
	pass # Replace with function body.


func _on_object_interaction_collision_interaction_true():
	if singelton.entered_nasius == true: 
		get_tree().change_scene_to_file("res://Scenes/GameScenes/cutscene_nasius_crying.tscn")
	elif singelton.entered_nasius == false: 
		get_tree().change_scene_to_file("res://Scenes/GameScenes/NasiusZimmer.tscn")

