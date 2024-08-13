extends Area2D
var onfire = false
func _on_body_entered(body):
	if(body.name == "Honey"):
		onfire = true

func _on_body_exited(body):
	if(body.name == "Honey"):
		onfire = false

func _process(delta):
	self.visible = Globals.fire
	if(onfire and self.visible):
		$Timer.start()
		onfire = false

func _on_timer_timeout():
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

