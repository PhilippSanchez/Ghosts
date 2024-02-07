extends Node2D
@onready var singelton = get_node("/root/Singelton")

func _ready():
	if singelton.xposplayer: 
		$TileMap/Player.position.x = singelton.xposplayer 
		$TileMap/Player.position.y = singelton.yposplayer
