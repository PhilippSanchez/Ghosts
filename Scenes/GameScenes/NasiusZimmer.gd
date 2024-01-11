extends Node2D

@onready var singelton = get_node("/root/Singelton")
# Called when the node enters the scene tree for the first time.
func _ready():
	singelton.entered_nasius = false 
	if singelton.has_pipe == true:
		$TileMap/soulmap.show()
		
	

	
	
