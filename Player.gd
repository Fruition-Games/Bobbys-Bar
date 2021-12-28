extends KinematicBody2D

#THIS IS DISCONTINUED CODE


var velocity = Vector2(0,0)
var rotation_dir = 0
const GRAV = 35
const SPEED = 250

func _physics_process(_delta):

	if Input.is_action_pressed("right"):
		velocity.x = SPEED
	elif Input.is_action_pressed("left"):
		velocity.x = -SPEED

	velocity.y = velocity.y + GRAV

	velocity = move_and_slide(velocity, Vector2.UP)
