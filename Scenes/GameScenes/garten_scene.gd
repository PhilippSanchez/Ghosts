extends Node2D
@onready var singelton = get_node("/root/Singelton")


func _ready():
	$Ambient.play()
	if singelton.schaufel_asamblet == false:
		$TileMap/LochNode.queue_free()
		$TileMap/Player/Stock.hide()
		
	if singelton.stock_picked == true:
		$TileMap/Stick.hide()
		
func _on_inventory_gui_closed():
	get_tree().paused = false
	

func _on_inventory_gui_opened():
	get_tree().paused = true
