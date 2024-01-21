extends Node2D

@onready var singelton = get_node("/root/Singelton")
@export var itemRes: InventoryItem

signal gotItem

func _on_object_interaction_collision_2_interaction_true():
	$"../Player/pfeife".show()
	$"../BG".show()
	singelton.pipe = true
	gotItem.emit(itemRes)

	


func _on_object_interaction_collision_2_interaction_null():
	$loch.show()
	$"../BG".hide()
	$"../Player/pfeife".hide()
	$"../../Succes".play()	


func _on_loch_interaction_false():
	$"../../Schaufel".play()
	$"../../Schaufel".play()
