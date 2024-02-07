extends Node2D

@onready var singelton = get_node("/root/Singelton")
@export var itemRes: InventoryItem

signal gotItem

func _on_object_interaction_collision_2_interaction_true():
	$"../Player/SchaufelDialog".show()
	$"../BG".show()
	singelton.schaufel = true
	gotItem.emit(itemRes)
	$"../Succes".play()




func _on_object_interaction_collision_2_interaction_null():
	$"../Player/SchaufelDialog".hide()
	$"../BG".hide()
	queue_free()
	singelton.xposplayer = $"../Player".position.x
	singelton.yposplayer = $"../Player".position.y
	
	get_tree().change_scene_to_file("res://Scenes/GameScenes/keller_scene.tscn")
	
