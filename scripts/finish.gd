extends Area2D
func _on_body_entered(body):
	if(body.name == "Honey"):
		$Flag.play("fmarked")
		$"../Honey/Camera2D/FinishPanel".visible = true
		$"../Finish".visible = false
		var stars = 0
		Globals.canmove = false
		Globals.checkpoint = 0
		if(Globals.coins >= 30):
			stars += 1
			$"../Honey/Camera2D/FinishPanel/Star1".play("filled")
		if(Globals.HoneyJar):
			stars += 1
			$"../Honey/Camera2D/FinishPanel/Star2".play("filled")
		if(Globals.coins == 50):
			stars += 1
			$"../Honey/Camera2D/FinishPanel/Star3".play("filled")
		Globals.coins = 0
