extends ProgressBar

@onready var singelton = get_node("/root/Singelton")


func _ready():
	$Timer.start()
	self.value = singelton.currentTime
	
	
func _on_timer_timeout():
	print(singelton.currentTime)
	print(self.value)
	print(self.max_value)
	
	if value >= 1:
		self.value -= 1000
		singelton.currentTime -= 1000
	elif  value < 1 && singelton.timerexited == false:
		get_tree().change_scene_to_file("res://Scenes/GameScenes/Zimmer_Aufwachraum.tscn")
		


	
