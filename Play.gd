extends Button

#Changes Scene to Level 1
func _on_Button_pressed():
	get_tree().change_scene("res://Lev1.tscn")


func _on_toLevelselect_pressed():
	get_tree().change_scene("res://Level Select!.tscn")
