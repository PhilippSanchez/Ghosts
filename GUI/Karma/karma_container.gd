extends HBoxContainer

@onready var KarmaGuiClass = preload("res://GUI/Karma/karma_gui.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func setMaxKarma(maxKarma: int):
	for i in range(maxKarma):
		var karma = KarmaGuiClass.instantiate()
		add_child(karma)

func updateKarma(currentKarma: int):
	var karmaPoints = get_children()
	
	for i in range(currentKarma):
		karmaPoints[i].update(true)
	
	for i in range(currentKarma, karmaPoints.size()):
		karmaPoints[i].update(false)
		
