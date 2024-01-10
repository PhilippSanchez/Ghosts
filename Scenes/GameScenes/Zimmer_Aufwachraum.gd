extends Node2D
@onready var singelton = get_node("/root/Singelton") 

# Called when the node enters the scene tree for the first time.
func _ready():
	if singelton.aufwach_rätsel == false: 
		$Barriere.queue_free()
	if singelton.xposplayer: 
		$Player.position.x = singelton.xposplayer 
		$Player.position.y = singelton.yposplayer


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass 
	
	
	
