extends CharacterBody2D #muss extenden damit es funktionieren kann

@export var speed: int = 50

@export var inventory: Inventory
@onready var animations = $AnimationPlayer
@onready var singelton = get_node("/root/Singelton")

var dialoge_active = false  

func handleInput():
	if dialoge_active == false : 
		var moveDirection = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down") # nimmt input ds users auf
		velocity = moveDirection * speed


func updateAnimation(): 
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
	handleInput()
	move_and_slide()
	updateAnimation()
	start_torch()
	
	
func start_torch() : 
	if singelton.player_torch == true: 
		$PointLight2D.show() 
	else : $PointLight2D.hide()


func _on_mülleimer_office_got_item(item):
	inventory.insert(item)
	singelton.inventory.append(item)
