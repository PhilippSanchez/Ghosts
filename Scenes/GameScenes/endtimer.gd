extends Area2D

@export var gamepath=""
@onready var singelton = get_node("/root/Singelton")



func _on_body_entered(body):
	if body.is_in_group("Player"):
		singelton.timerexited = true
		print(singelton.timerexited)
		get_tree().change_scene_to_file(gamepath)
		
		
