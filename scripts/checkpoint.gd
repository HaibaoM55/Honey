extends Area2D

func _on_body_entered(body):
	if(body.name == "Honey"):
		$Flag.play("cmarked")
		Globals.checkpoint = self.get_meta("CheckpointNo")
