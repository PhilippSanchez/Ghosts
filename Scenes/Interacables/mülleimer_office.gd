extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$"../CanvasLayer/DialogueBox".start("OfficeMülleimerInteraction")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_entered(area):
	print("entered")
	# Hier prüfen ob Player Klasse entered
	$"../CanvasLayer/DialogueBox".start("OfficeMülleimerInteraction")
	pass # Replace with function body.
