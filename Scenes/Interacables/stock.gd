extends Node2D
	
@onready var singelton = get_node("/root/Singelton")
@export var itemRes: InventoryItem

signal gotItem

func _on_object_interaction_collision_2_interaction_true():
	print("object interaction")
	singelton.stock_picked = true
	gotItem.emit(itemRes)
	queue_free()
	$"../Succes".play()

