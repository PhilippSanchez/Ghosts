extends Area2D

@export var textboxName ="" 


# Called when the node enters the scene tree for the first time.
func _ready():
	$"../CanvasLayer/DialogueBox".start(textboxName) 
	
	
		
		
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass 


func _on_area_entered(area):
	$Interaction.show()
	if Input.is_action_pressed("ui_down"): 
		$"../CanvasLayer/DialogueBox".start(textboxName)
	
	# Hier prüfen ob Player Klasse entered
	$"../CanvasLayer/DialogueBox".start(textboxName)
	pass # Replace with function body.



func _on_area_exited(area):
	$Interaction.hide()
	pass # Replace with function body.
