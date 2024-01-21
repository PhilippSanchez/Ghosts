extends Node2D
	
@onready var singelton = get_node("/root/Singelton")
@export var itemRes: InventoryItem

signal gotItem

func _on_object_interaction_collision_2_interaction_true():
	$"../Player/Stock".show()
	$"../BG".show()
	print("object interaction")
	singelton.stock_picked = true
	gotItem.emit(itemRes)
	$"../../Succes".play()



func _on_object_interaction_collision_2_interaction_null():
	queue_free()
	$"../Player/Stock".hide()
	$"../BG".hide()
