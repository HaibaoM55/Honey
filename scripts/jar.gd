extends Area2D



func _on_body_entered(body):
	$Label.visible = true
	$Sprite2D.visible = false
	Globals.HoneyJar = true
