extends TextureButton



func _on_pressed():
	Globals.canmove = true
	var level = "res://scenes/levels/level"+str(get_meta("level"))+".tscn"
	get_tree().change_scene_to_file(level)
