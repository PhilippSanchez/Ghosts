extends Node2D
@onready var singelton = get_node("/root/Singelton")



func _ready():
	singelton.player_torch = true
