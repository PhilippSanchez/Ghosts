extends Area2D

@export var textboxName ="" 
@export var groupName  =""
@export var consequent_var : bool 
@onready var interaction = $"../Interaction"
@onready var textbox = $CanvasLayer/ObjectInteractionsDialog
var consequenz = null 
var dialogue_finished  = false 

# Sendet Signal, wenn consequenz == true 
signal interaction_true 

#Sendet Signal,sobald consequent = false 
signal interaction_false 

		

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass 
	
# Prüft ob der Player in der Nähe ist
func _on_area_entered(area):
	print(area)
	if area.is_in_group("Player") and dialogue_finished == false : 
		interaction.show() 
		$CanvasLayer/ObjectInteractionsDialog.start(textboxName)
		
		if Input.is_action_pressed("ui_down"): 
			textbox.start(textboxName)
	
	pass # Replace with function body.


# Prüft ob Player Fläche verlasse hat
func _on_area_exited(area):
	interaction.hide()
	
	pass # Replace with function body.


#Prüft ob ein Dialog Conserquenzen hat... 
#Sobald Auswahl getroffen wurde, kann Dialog nicht nochmal aufgerufen werden... 
func _on_object_interactions_dialog_dialogue_signal(value):
	dialogue_finished = true 
	if value == "true": 
		interaction_true.emit() 
		consequenz = true 
	elif value =="false":
		consequenz = false 
		interaction_false.emit() 
	else : consequenz = null 
	consequenz = null 
	pass # Replace with function body.
