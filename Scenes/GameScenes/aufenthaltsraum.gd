extends Node2D
@onready var singelton = get_node("/root/Singelton")
# Called when the node enters the scene tree for the first time.
func _ready():
	if singelton.xposplayer : 
		$Player.position.x = singelton.xposplayer 
		$Player.position.y = singelton.yposplayer
