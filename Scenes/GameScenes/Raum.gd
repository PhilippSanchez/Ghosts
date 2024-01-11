extends TileMap

@onready var singelton = get_node("/root/Singelton")
@onready var switching_opt = $switching_keller

# Called when the node enters the scene tree for the first time.
func _ready():
	if singelton.keller_open == true:
			$DoorOpen.show()
			$switching_keller
			switching_opt.queue_redraw()
	else: switching_opt.queue_free()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
