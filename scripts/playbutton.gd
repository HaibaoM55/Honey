extends TextureButton



func _on_pressed():
	Globals.pb_pos = $"../../MenuMusic".get_playback_position()
	Globals.is_pb = true
	get_tree().change_scene_to_file("res://scenes/levels/level_selector.tscn")
