extends Area2D


func _on_body_entered(body):
	if(body.name == "Honey"):
		$Timer.start()



func _on_timer_timeout():
	var checkpoint = Globals.checkpoint
	$"../../Honey".collision_mask = 0
	if(Globals.dir == 1):
		$"../../Honey/HoneySprite".play("slimed_right")
	else:
		$"../../Honey/HoneySprite".play("slimed_left")	
