extends Area2D

func _on_body_entered(body):
	$"../Honey".position = $"../GreenPortal".position
	
