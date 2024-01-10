extends Node2D

@onready var singelton = get_node("/root/Singelton")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
		if singelton.stock_picked == true:
			$TileMap/Node2D.queue_free()

