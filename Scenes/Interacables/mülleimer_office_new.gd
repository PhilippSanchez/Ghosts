extends Node2D

@onready var singelton = get_node("/root/Singelton")

@export var itemRes: InventoryItem

signal gotItem
	
func _on_object_interaction_collision_2_interaction_true():
	print("Schlüssel erhalten")
	singelton.passcode_keller = true
	gotItem.emit(itemRes)
	




