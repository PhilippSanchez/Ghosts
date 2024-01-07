extends Node2D
@onready var singelton = get_node("/root/Singelton")

# Called when the node enters the scene tree for the first time.
func _ready():
	$"../CanvasLayer/DialogueBox".start("OfficeMülleimerInteraction")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_area_entered(_area):
	print("entered")
	# Hier prüfen ob Player Klasse entered
	$"../CanvasLayer/DialogueBox".start("OfficeMülleimerInteraction")
	pass # Replace with function body.


func _on_object_interaction_collision_2_interaction_true():
	print("Schlüssel erhalten")
	print(singelton.schlüssel_keller)
	singelton.schlüssel_keller = true

