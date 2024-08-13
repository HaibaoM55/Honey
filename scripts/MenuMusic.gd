extends AudioStreamPlayer2D
func _on_finished():
	self.play()
	
func _process(delta):
	if(Globals.is_pb):
		self.stop()
		self.play(Globals.pb_pos)
		Globals.is_pb = false
func _ready():
	self.play(Globals.pb_pos)
