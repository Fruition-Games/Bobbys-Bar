extends KinematicBody2D

#Declare Variables
var velocity = Vector2(0,0)
var GRAV = -35
export var SPEED = -200

#Physics Processes
func _physics_process(_delta):
	velocity.y = velocity.y + GRAV
	velocity.y = SPEED

	velocity = move_and_slide(velocity)

func _on_Stopper1_body_entered(_body):
	print("Setting var SPEED to 0")
	SPEED = 0
	GRAV = 0