extends Node2D
@onready var singelton = get_node("/root/Singelton")

func _ready():
	if singelton.xposplayer: 
		$Raum/Player.position.x = singelton.xposplayer 
		$Raum/Player.position.y = singelton.yposplayer
