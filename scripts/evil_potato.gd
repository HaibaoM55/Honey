extends Area2D
var once = true
var health = 4
func _process(delta):
	if(health > 0 and Globals.checkpoint == 1 and once):
		$Timer.start()
		once = false

func _on_timer_timeout():
	if(health > 0):
		Globals.spike_throw = true
		Globals.fire = true
		$Timer.start()

func _on_area_entered(area):
	if(health > 0 and area.name == "CannonBall"):
		health = health - 2
		$Text.text = str(health)+"%"
		if(health <= 0):
			$PotatoSprite.play("dead")
			$Text.visible = false
			$"../Lever".visible = true
		elif(health <= 33):
			$PotatoSprite.play("angry")
			$"../MovableSpike".scale.x = 4.0
			$"../MovableSpike".scale.y = 4.0
		elif(health <= 66):
			$PotatoSprite.play("meh")
			$"../MovableSpike".scale.x = 2.0
			$"../MovableSpike".scale.y = 2.0
		
