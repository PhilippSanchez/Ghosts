extends CharacterBody2D

@export var speed = 20
@export var limit = 0.5
@export var endPoint: Marker2D

@onready var animations = $AnimatedSprite2D



var startPosition
var endPosition

func _ready():
	startPosition = position
	endPosition = endPoint.global_position
	

func changeDirection():
	var tempEnd = endPosition
	endPosition = startPosition
	startPosition = tempEnd
	

func updateAnimation():
	var animationString = "walk_up"
	if velocity.y > 0:
		animationString = "walk_down"
	animations.play(animationString)
	
	
func updateVelocity():
	var moveDirection = endPosition - position
	if moveDirection.length() < limit:
		changeDirection()
	velocity = moveDirection.normalized()*speed
	

func handleCollide():
	for i in get_slide_collision_count():
		var collision = get_slide_collision(i)
		var _collider = collision.get_collider()
		
		
func _physics_process(_delta):
	updateVelocity()
	move_and_slide()
	handleCollide()
	updateAnimation()
