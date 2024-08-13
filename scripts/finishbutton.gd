extends TextureButton


func _on_pressed():
	Globals.HoneyJar = false
	get_tree().change_scene_to_file("res://scenes/levels/level_selector.tscn")
