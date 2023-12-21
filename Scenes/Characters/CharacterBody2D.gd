extends CharacterBody2D #muss extenden damit es funktionieren kann

@export var speed: int = 35
@onready var animations = $AnimationPlayer

func handleInput():
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