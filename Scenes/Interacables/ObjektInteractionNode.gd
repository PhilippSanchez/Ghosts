extends Area2D

@export var textboxName ="" 
@onready var second_dialogue_name = ""
@onready var second_dialogue_true = false 
@export var groupName  =""
@export var consequent_var : bool 
@export var dialogue_data : DialogueData = null




@onready var interaction = $"../Interaction"
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


	if textbox_startable == true and Input.is_action_just_released("ui_accept") and dialogue_finished == false: 
		textbox_startable = false 
		if second_dialogue_true == true && second_dialogue_name != "":
			$CanvasLayer/ObjectInteractionsDialog.start(second_dialogue_name) 
			
		else: 
			$CanvasLayer/ObjectInteractionsDialog.start(textboxName)
			
	pass 

	
# Prüft ob der Player in der Nähe ist
func _on_area_entered(area):
	if area.is_in_group("Player") and dialogue_finished == false : 
		print("areatest")
		interaction.show() 
		textbox_startable = true 
	pass # Replace with function body.


# Prüft ob Player Fläche verlasse hat
func _on_area_exited(_area):
	if _area.is_in_group("Player"): 
		textbox_startable = false 
		interaction.hide()
		
		pass # Replace with function body.


#Prüft ob ein Dialog Conserquenzen hat... 
#Sobald Auswahl getroffen wurde, kann Dialog nicht nochmal aufgerufen werden... 
func _on_object_interactions_dialog_dialogue_signal(value):
	if value == "notagain": 
		interaction.hide() 
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


func _on_object_interactions_dialog_dialogue_started(_id):
	$CanvasLayer/TextsceneBarrier.show() 
	player.dialoge_active = true 
	print(player, "true")
