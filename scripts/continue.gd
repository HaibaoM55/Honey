extends MenuButton

func _on_pressed():
	get_parent().visible = false
	get_tree().paused = false
