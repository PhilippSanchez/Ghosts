extends Node2D

func _on_inventory_gui_closed():
	get_tree().paused = false
	

func _on_inventory_gui_opened():
	get_tree().paused = true
	
