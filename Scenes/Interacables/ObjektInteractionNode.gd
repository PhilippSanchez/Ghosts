extends Area2D

@export var textboxName ="" 
@export var groupName  =""
@export var consequent_var : bool 
@onready var interaction = $"../Interaction"
@onready var textbox = $CanvasLayer/ObjectInteractionsDialog
var consequenz = null 

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/ObjectInteractionsDialog.start(textboxName) 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass 
	

func _on_area_entered(area):
	if area.is_in_group(groupName): 
		interaction.show() 
		if Input.is_action_pressed("ui_down"): 
			textbox.start(textboxName)
	
	pass # Replace with function body.



func _on_area_exited(area):
	interaction.hide()
	pass # Replace with function body.


func _on_object_interactions_dialog_dialogue_signal(value):
	if value == "true": 
		consequenz = true 
	elif value =="false":
		consequenz = false 
	else : consequenz = null 
	pass # Replace with function body.
