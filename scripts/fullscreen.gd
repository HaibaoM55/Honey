extends CheckButton
var fullsc = true
func _on_button_down():
	fullsc = false
	get_window().mode = Window.MODE_WINDOWED
func _on_button_up():
	fullsc = true
	get_window().mode = Window.MODE_FULLSCREEN
func _process(delta):
	if(fullsc):
		get_window().mode = Window.MODE_FULLSCREEN
	else:
		get_window().mode = Window.MODE_WINDOWED
