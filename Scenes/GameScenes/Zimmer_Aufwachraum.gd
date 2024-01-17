extends Node2D
@onready var singelton = get_node("/root/Singelton") 

# Called when the node enters the scene tree for the first time.
func _ready():
	if singelton.aufwach_rätsel == false: 
		$Barriere.queue_free()
	if singelton.xposplayer: 
		$Player.position.x = singelton.xposplayer 
		$Player.position.y = singelton.yposplayer
	if singelton.entering_aufwachtraum_first == false  : 
		$Tutorial.queue_free() 
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass 
	
	
	


func _on_tutorial_interaction_true():
	singelton.entering_aufwachraum_first = false 
	pass # Replace with function body.
