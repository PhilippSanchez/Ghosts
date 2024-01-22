extends Node2D


func _ready():
	$Office/Player/ProgressBar.get_node("Timer").start()
	



func _on_inventory_gui_closed():
	get_tree().paused = false
	

func _on_inventory_gui_opened():
	get_tree().paused = true
	
