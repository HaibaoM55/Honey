extends Area2D

var showText = false
var done = false
func _on_body_entered(body):
	if(done == false and body.name == "Honey"):
		showText = true
		$Text.visible = true
func _on_body_exited(body):
	if(done == false and body.name == "Honey"):
		showText = false
		$Text.visible = false
func _process(delta):
	if(done == false and Input.is_action_just_pressed("enter")):
		if(self.visible and showText):
			$LeverSprite.play("right")
			$Text.visible = false
			done = true
			$"../Platform/AnimationPlayer".play("move")
