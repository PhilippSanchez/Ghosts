extends Area2D

@export var textboxName ="" 
@export var groupName  =""
@onready var interaction = $"../Interaction"

# Called when the node enters the scene tree for the first time.
func _ready():
	interaction.show() 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass 


func _on_area_entered(area):
	if area.is_in_group(groupName): 
		interaction.show() 
		if Input.is_action_pressed("ui_down"): 
			$"../CanvasLayer/DialogueBox".start(textboxName)
	
	pass # Replace with function body.



func _on_area_exited(area):
	interaction.hide()
	pass # Replace with function body.
