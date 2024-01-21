extends Node2D

@onready var singelton = get_node("/root/Singelton")
@export var itemRes: InventoryItem

signal gotItem

func _ready():
	if singelton.schaufel == true && singelton.stock_picked == true:
		$dialouge3.show()
		$dialouge2.queue_free()
		$dialouge1.queue_free()
		
	elif singelton.schaufel == true && singelton.stock_picked == false:
		$dialouge2.show()
		$dialouge3.queue_free()
		$dialouge1.queue_free()
		
	else:
		$dialouge1.show()
		$dialouge2.queue_free()
		$dialouge3.queue_free()
		
	if singelton.schaufel == true:
		$"../Schaufel".hide()
		



func _on_object_interaction_collision_2_interaction_true():
	singelton.schaufel_asamblet = true
	gotItem.emit(itemRes)
	$"../../Timer".start()
	$"../Crafting".play()




func _on_timer_timeout():
		$"../Succes".play()		
		$"../Player/Komplette Schaufel Dialog".show()
		$"../BG".show()




func _on_dialouge_3_interaction_null():
	$"../Player/Komplette Schaufel Dialog".hide()
	$"../BG".hide()
