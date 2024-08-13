extends MenuButton


func _on_pressed():
	get_tree().paused = false
	Globals.checkpoint = 0
	Globals.coins = 0
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
