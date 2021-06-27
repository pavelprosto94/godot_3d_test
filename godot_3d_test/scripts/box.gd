extends MeshInstance

func _process(delta):
	rotation.y += 0.2*delta
	rotation.z += 0.1*delta


func _on_Button_pressed():
	get_tree().change_scene("res://environment/Menu.tscn")
