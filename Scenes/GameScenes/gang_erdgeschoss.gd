extends Node2D

@onready var singelton = get_node("/root/Singelton")
# Called when the node enters the scene tree for the first time.
func _ready():
	if singelton.entering_gang_unten_first == true: 
		$Player.dialoge_active = true 
	if singelton.entering_gang_unten_first == false: 
		$Pfelger_rennt.queue_free()
		
	if singelton.xposplayer: 
		$Player.position.x = singelton.xposplayer 
		$Player.position.y = singelton.yposplayer 
	
func _process(delta):
	if $Pfelger_rennt: 
		if $Pfelger_rennt.position.x < 110 && singelton.entering_gang_unten_first == false: 
			$Pfelger_rennt.queue_free()
			$Player.dialoge_active = false 
