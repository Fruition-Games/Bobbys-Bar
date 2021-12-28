extends Button

#Level Select Functions
func _on_Level1_pressed():
	get_tree().change_scene("res://Lev1.tscn")


func _on_Level2_pressed():
	get_tree().change_scene("res://Lev2.tscn")

func _on_Level3_pressed():
	pass #get_tree().change_scene("res://Lev3.tscn")