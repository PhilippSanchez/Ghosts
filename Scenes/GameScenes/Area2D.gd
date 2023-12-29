extends Area2D

var entered = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

	pass


func _on_body_entered(body: PhysicsBody2D):
	entered = true
	print("entered")
	pass # Replace with function body.
	

func change_scene(entered):
	if entered == true:
		get_tree().change_scene_to_file("res://Scences/GameScenes/hallway_scene.tscn")
	pass
