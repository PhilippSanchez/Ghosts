extends Label

@onready var singelton = get_node("/root/Singelton")

var curentNumb = ""

func _on_button_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter	
	$"../keypad".play()
	
func _on_button_4_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter
	$"../keypad".play()


func _on_button_2_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter
	$"../keypad".play()

func _on_button_3_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter
	$"../keypad".play()

func _on_enter_button_pressed():
	if self.text == "1054":
		singelton.keller_open = true
		self.text = "Code Correct"
		$"../access".play()
		$"../../Timer".start()	
		
	else:
		self.text = "Code Inavalid"
		$"../denied".play()
		self.text = "Enter Pin Code ..."
		self.modulate = Color('FFFFFF')
		$Sprite2D2.show()		

func _on_invalid_timer_timeout():
	self.text = "Enter Pin Code ..."


func _on_clear_send_data(_parameter):
	self.text = "Enter Pin Code ..."
	


func _on_timer_timeout():
	get_tree().change_scene_to_file("res://Scenes/GameScenes/Keller_Vorraum.tscn")


func _on_exipt_pressed():
	get_tree().change_scene_to_file("res://Scenes/GameScenes/Keller_Vorraum.tscn")
