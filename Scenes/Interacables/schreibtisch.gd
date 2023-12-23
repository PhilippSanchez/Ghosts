extends Node2D
var consequenz = null 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	pass 


func _on_object_interaction_collision_2_interaction_true():
	$"../Barriere".queue_free()
	pass # Replace with function body.
