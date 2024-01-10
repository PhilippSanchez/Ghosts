extends Sprite2D
@onready var animations = $AnimationPlayer
@onready var singelton = get_node("/root/Singelton")
@onready var player = $"../Player"

signal changedKarma


func _process(_delta):
	animations.play("crying")


func _on_object_interaction_collision_2_interaction_true():
	singelton.currentKarma -=1 
	
	
