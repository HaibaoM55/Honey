extends Area2D




func _on_body_entered(body):
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
