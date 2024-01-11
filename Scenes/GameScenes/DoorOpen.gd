extends Sprite2D

@onready var singelton = get_node("/root/Singelton")

# Called when the node enters the scene tree for the first time.
func _ready():
		if singelton.keller_open == true:
			$".".show()



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


