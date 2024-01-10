extends Label

var curentNumb = ""

func _on_button_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter	
	
func _on_button_4_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter



func _on_button_2_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter
	

func _on_button_3_send_data(parameter):
	$Sprite2D2.hide()
	if self.text != "Enter Pin Code ...":
		self.text += parameter
	else: self.text = parameter


func _on_enter_button_pressed():
	if self.text == "1057":
		self.text = "Code Correct"
		get_tree().change_scene_to_file("res://Scenes/GameScenes/keller_scene.tscn")
	else:
		self.text = "Code Inavalid"
		self.text = "Enter Pin Code ..."
		self.modulate = Color('FFFFFF')
		$Sprite2D2.show()

func _on_invalid_timer_timeout():
	self.text = "Enter Pin Code ..."


func _on_clear_send_data(parameter):
	self.text = "Enter Pin Code ..."

