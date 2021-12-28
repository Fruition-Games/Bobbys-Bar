extends Area2D

#Checks for sides and bottoms entered to reset
func _on_TB2_body_entered(_body):
	get_tree().change_scene("res://Lev1.tscn")
	print("Reset...")


func _on_WZ_body_entered(_body):
	get_tree().change_scene("res://Lev1.tscn")
	print("Reset...")


func _on_WallZone2_body_entered(_body):
	get_tree().change_scene("res://Lev1.tscn")
	print("Reset...")
