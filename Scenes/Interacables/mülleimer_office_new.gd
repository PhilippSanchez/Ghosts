extends Node2D
@onready var singelton = get_node("/root/Singelton")

# Called when the node enters the scene tree for the first time.


func _on_object_interaction_collision_2_interaction_true():
	print("Schlüssel erhalten")
	print(singelton.schlüssel_keller)
	singelton.schlüssel_keller = true


