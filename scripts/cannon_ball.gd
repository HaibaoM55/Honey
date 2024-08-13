extends Area2D

func _process(delta):
	if(Globals.shoot == true):
		self.visible = true
		Globals.reloaded = false
		self.position = self.position.move_toward(Vector2(1224, -215), 5)
	if(self.position == Vector2(1224, -215)):
		Globals.shoot = false
		self.visible = false
		$Timer.start()
		$"../Cannon/Text".text = "Reloading"
		self.position = Vector2(1446, -73)
func _on_timer_timeout():
	Globals.reloaded = true
	$"../Cannon/Text".text = "ENTER"
