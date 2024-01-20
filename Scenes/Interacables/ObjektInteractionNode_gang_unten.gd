extends Area2D

@export var textboxName ="" 
@export var groupName  =""
@export var consequent_var : bool 
@export var dialogue_data : DialogueData = null
@onready var textbox = $CanvasLayer/ObjectInteractionsDialog
@onready var player = get_parent().get_parent().get_node("Player")



var consequenz = null 
var dialogue_finished  = false 
var textbox_startable = false 
@onready var singelton = get_node("/root/Singelton") 

# Sendet Signal, wenn consequenz == true 
signal interaction_true 

#Sendet Signal,sobald consequent = false 
signal interaction_false 

signal interaction_null 

signal take_something 

# Called when the node enters the scene tree for the first time.
func _ready():
	$CanvasLayer/ObjectInteractionsDialog.set_data(dialogue_data) 
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	if textbox_startable == true and dialogue_finished == false and singelton.entering_gang_unten_first == true: 
		textbox_startable = false 
		singelton.entering_gang_unten_first = false 
		$CanvasLayer/ObjectInteractionsDialog.start(textboxName)
	pass 
	
# Prüft ob der Player in der Nähe ist
func _on_area_entered(area):
	print(area)
	if area.is_in_group("Player") and dialogue_finished == false : 
		$"..".player_entered = true 
		textbox_startable = true 
		
		
	
	pass # Replace with function body.


# Prüft ob Player Fläche verlasse hat
func _on_area_exited(_area):
	textbox_startable = false 
	
	
	pass # Replace with function body.


#Prüft ob ein Dialog Conserquenzen hat... 
#Sobald Auswahl getroffen wurde, kann Dialog nicht nochmal aufgerufen werden... 
func _on_object_interactions_dialog_dialogue_signal(value):
	if value == "notagain": 
		
		dialogue_finished = true 
		
	if value == "takeitem":
		take_something.emit()  
		
	if value == "true": 
		
		print("true")
		
		interaction_true.emit() 
		consequenz = true 
	elif value =="false":
		consequenz = false 
		interaction_false.emit() 
	elif value =="null" : 
		consequenz = null 
		interaction_null.emit() 
		
		
	
	pass # Replace with function body.


func _on_object_interactions_dialog_dialogue_ended():
	$CanvasLayer/TextsceneBarrier.hide() 
	
	
	
	print(player, "false")
	player.dialoge_active = false 
	textbox_startable = false  
	
	pass # Replace with function body.


func _on_object_interactions_dialog_dialogue_started(_id):
	
	$CanvasLayer/TextsceneBarrier.show() 
	
	player.dialoge_active = true 
	print(player, "true")
	pass # Replace with function body.



func _on_interaction_true():
	$"..".player_entered = false 
	singelton.entering_gang_unten_first = false
	$"..".endPosition = $"..".global_position
	print($"../Marker2D".position.x, $"../Marker2D".position.y)
	pass # Replace with function body.
