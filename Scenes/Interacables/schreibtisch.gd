extends Node2D
var consequenz = null 
var textbox_active = false 
@onready var singelton = get_node("/root/Singelton") 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass 


func _on_object_interaction_collision_2_interaction_true():
	if singelton.aufwach_rätsel == true : 
		print("HIT")
		$"../Book".show() 
		$"../Barriere".queue_free()
		singelton.aufwach_rätsel = false 
	else : pass 
	


func _on_object_interaction_collision_2_interaction_false():
	
	pass # Replace with function body.


func _on_object_interaction_collision_2_interaction_null():
	print("HITFALSE ")
	$"../Book".hide()  
	pass # Replace with function body.


func _on_object_interaction_collision_2_take_something():
	$"../Book/Key".hide() 
	pass # Replace with function body.
