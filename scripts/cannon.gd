extends Area2D
var showText = false
func _on_body_entered(body):
	if(body.name == "Honey"):
		showText = true
		$Text.visible = true
func _on_body_exited(body):
	if(body.name == "Honey"):
		showText = false
		$Text.visible = false
func _process(delta):
	if(Input.is_action_just_pressed("enter")):
		if(showText and Globals.reloaded):
			Globals.shoot = true
