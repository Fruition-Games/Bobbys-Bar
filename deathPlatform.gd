extends KinematicBody2D

#Declare variables
var velocity = Vector2(0,0)
const GRAV = -35
export var SPEED = -200

#Physics Processes
func _physics_process(_delta):
	velocity.y = velocity.y + GRAV
	velocity.y = SPEED

	velocity = move_and_slide(velocity)

func _on_Spike_body_entered(body):
	if body.get_name() == "Bobby2":
		print("Bobby Entered Spike...")
		get_tree().change_scene("res://Lev1.tscn")
		print("Bobby ded...")