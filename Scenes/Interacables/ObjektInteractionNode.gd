extends Area2D

@export var textboxName ="" 
@export var groupName  =""

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass 


func _on_area_entered(area):
	if area.is_in_group(groupName): 
		$Interaction.show()
		if Input.is_action_pressed("ui_down"): 
			$"../CanvasLayer/DialogueBox".start(textboxName)
	
	pass # Replace with function body.



func _on_area_exited(area):
	$Interaction.hide()
	pass # Replace with function body.
