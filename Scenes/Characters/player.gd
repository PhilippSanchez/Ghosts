extends CharacterBody2D #muss extenden damit es funktionieren kann


@export var speed: int = 50
@export var maxKarma = 4
@export var inventory: Inventory

@onready var animations = $AnimationPlayer
@onready var karmaContainer = $CanvasLayer/karmaContainer
@onready var singelton = get_node("/root/Singelton")
@onready var currentKarma = singelton.currentKarma

var moveback = false 
var move_to_target_enabled = false
var dialoge_active = false  

func _ready():
	karmaContainer.setMaxKarma(maxKarma)
	karmaContainer.updateKarma(singelton.currentKarma)
	singelton.karmahit.connect(_onkarmachange)

func _onkarmachange(): 
	karmaContainer.updateKarma(singelton.currentKarma)
	
	
func handleInput():
	if move_to_target_enabled ==false && dialoge_active == false : 
		var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") # nimmt input ds users auf
		velocity = moveDirection * speed
	else : 
		if self.position.x < 30  && move_to_target_enabled == true : 
			velocity = Vector2(0,0)
			move_to_target_enabled = false 
			print(self.position.x)
			dialoge_active = false


func updateAnimation(): 
	if dialoge_active == true:
		if animations.is_playing():
			animations.stop()
	if velocity.length() == 0:
		if animations.is_playing():
			animations.stop()
	
	else:	
		var direction = "down"
		if velocity.x < 0: direction = "left"
		elif velocity.x > 0: direction ="right"
		elif velocity.y < 0: direction = "up"
	
		animations.play("walk_" + direction) 

func _physics_process(_delta):   #verarbeitet die physics des characters das ist Unser Character Gameloop
	if dialoge_active == false : 
		handleInput()
		move_and_slide()
		updateAnimation()
		start_torch()
		
			

	
	
func start_torch() : 
	if singelton.player_torch == true: 
		$PointLight2D.show() 
	else : $PointLight2D.hide()


func _on_mülleimer_office_got_item(item):
	print("added Inventory")
	inventory.insert(item)
	singelton.inventory.append(item)


func _on_stick_got_item(item):
	print("added Inventory")
	inventory.insert(item)
	singelton.inventory.append(item)
		



func _on_schaufel_got_item(item):
	print("added Inventory")
	inventory.insert(item)
	singelton.inventory.append(item)


func _on_werkbank_got_item(item):
	print('added inventory')
	inventory.insert(item)
	singelton.inventory.append(item)



func _on_loch_node_got_item(item):
	print('added inventory')
	inventory.insert(item)
	singelton.inventory.append(item)


func move_to_target(target_position: Vector2):
	print("hitmovetarge")
	var direction_to_target = (target_position - position).normalized()
	velocity = direction_to_target * speed
	move_to_target_enabled = true
	dialoge_active = true
	
	

