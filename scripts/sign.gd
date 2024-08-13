extends Area2D


var stillHere = false;
func _on_body_entered(body):
	if(body.name == "Honey"):
		stillHere = true
func _on_body_exited(body):
	if(body.name == "Honey"):
		stillHere = false
	
func _process(delta):
	if(stillHere and $"../Honey/Camera2D/SignPanel".visible == false):
		$EnterText.visible = true
		if(Input.is_action_pressed("enter")):
			$EnterText.visible = false
			$"../Honey/Camera2D/SignPanel/Title".text = get_meta("Title")
			$"../Honey/Camera2D/SignPanel/Text".text = get_meta("Text")
			$"../Honey/Camera2D/SignPanel".visible = true
	else:
		$EnterText.visible = false
