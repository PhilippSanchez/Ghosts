extends Node

#Collactables 
var entering_gang_first = true 
var entering_gang_unten_first = true 
var aufwach_rätsel = true 
var passcode_keller = false
var has_pipe = false
var entering_aufwachtraum_first = true 
var wrongdecision = false 

#GUI

var inventory = []
signal karmahit
var currentKarma: int = 4
var newKarma : int 
var currentTime: int = 13000
var timerexited = false

#Enviroment
var keller_open = false
var stock_picked = false
var schaufel = false
var schaufel_asamblet = false
var pipe = false 




#Aktiviert den Nachtmodus im Spiel
signal playertorch_signal 
var player_torch = false 
var strike = 0 
var karmacontainer =[] 
var currentkarma : int 


#Postionen des Players 
var xposplayer : float 
var yposplayer : float 


var entered_nasius = true 

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	newKarma = currentKarma


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	
	if newKarma != currentKarma: 
		karmahit.emit() 
		newKarma= currentKarma
	
	pass
