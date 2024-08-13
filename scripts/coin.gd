extends Area2D


func _on_body_entered(body):
	Globals.coins = Globals.coins+1 
	var CoinsText = ""
	if(Globals.coins < 10):
		CoinsText = "0"+str(Globals.coins)
	else:
		CoinsText = str(Globals.coins)
	$"../../Honey/Camera2D/CoinsText".text = CoinsText
	Globals.coinSound = true
	queue_free()
