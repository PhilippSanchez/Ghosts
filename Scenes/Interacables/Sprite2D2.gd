extends Sprite2D


func _on_object_interaction_collision_2_interaction_true():
	queue_free()
	$"../Interaction".hide()  
