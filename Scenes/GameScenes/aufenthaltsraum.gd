extends Node2D
@onready var singelton = get_node("/root/Singelton")
# Called when the node enters the scene tree for the first time.
func _ready():
	singelton.player_torch = false
	if singelton.xposplayer : 
		$Player.position.x = singelton.xposplayer 
		$Player.position.y = singelton.yposplayer

	
		

func _on_object_interaction_collision_interaction_true():
	$Textinput.show() 
	pass # Replace with function body.

