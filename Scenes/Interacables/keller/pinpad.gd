extends Button

signal sendData(parameter)


func _pressed():
	sendData.emit(self.text)
