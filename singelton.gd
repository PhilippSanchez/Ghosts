extends Node

#Collactables 
var entering_gang_first = true 
var aufwach_rätsel = true 
var passcode_keller = false

#GUI
var inventory = []
var currentKarma: int = 4

#Aktiviert den Nachtmodus im Spiel
signal playertorch_signal 
var player_torch = false 
var strike = 0 


#Postionen des Players 
var xposplayer : float 
var yposplayer : float 


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
