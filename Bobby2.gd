extends RigidBody2D

#Declare variables
var velocity = Vector2(0,0)
const GRAV = 20000000
var SPEED = 50

#Physics processes
func _physics_process(_delta):
	if Input.is_action_pressed("right"):
		apply_central_impulse(Vector2(SPEED,0))
	elif Input.is_action_pressed("left"):
		apply_central_impulse(Vector2(-SPEED,0))
	if Input.is_action_pressed("faster") and not $RayCast2D.is_colliding():
		gravity_scale +=1 
	elif Input.is_action_just_released("faster"):
		gravity_scale = 5

func _on_Stopper1_body_entered(body):
	if body.get_name() == "Bobby2":
		print("Bobby Passed Through...")
		get_tree().change_scene("res://YDI1.tscn")
		print("Scene Changed...")

func _on_Checker_body_entered(body):
	if body.get_name() == "Bobby2":
		get_tree().change_scene("res://YDI2.tscn")

func _on_LR_body_entered(body):
	if body.get_name() == "Bobby2":
		get_tree().change_scene("res://Death.tscn")


func _on_bottomChecker_body_entered(body):
	if body.get_name() == "Bobby2":
		get_tree().change_scene("res://YDI3.tscn")