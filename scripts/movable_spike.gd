extends Area2D
var HoneyPos = Vector2(0,-60)
func _process(delta):
	if(Globals.spike_throw):
		HoneyPos = Vector2($"../Honey".position.x, -60)
		Globals.spike_throw = false
		self.position = $"../EvilPotato".position
		self.visible = true
	self.position = self.position.move_toward(HoneyPos, 1)
	if(self.position.y >= -60):
		self.position = $"../EvilPotato".position
		self.visible = false
		Globals.fire = false

func _on_body_entered(body):
	if(body.name == "Honey" and self.visible):
		var checkpoint = Globals.checkpoint
		$"../Honey".collision_mask = 1
		$"../Honey/HoneySprite".play("Idle right")
		match checkpoint:
			0:
				$"../Honey".position.x = -113
				$"../Honey".position.y = -9
			1:$"../Honey".position = $"../Checkpoint1".position
			2:$"../Honey".position = $"../Checkpoint2".position
			3:$"../Honey".position = $"../Checkpoint3".position
			4:$"../Honey".position = $"../Checkpoint4".position			
