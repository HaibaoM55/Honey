extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var lastdir = 1
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var tabHeld = false
func _process(delta):
	if(Globals.HoneyJar):
		$Arrow.visible = false
	else:
		if(Input.is_action_just_pressed("tab")):
			tabHeld = true
		if(Input.is_action_just_released("tab")):
			tabHeld = false
		if(tabHeld):
			$Arrow.visible = true
			$Arrow.look_at($"../HoneyJar".position)
		else:
			$Arrow.visible = false
	if(Input.is_action_pressed("ui_cancel")):
		$Pause.visible = true
		get_tree().paused = true
	if(Globals.coinSound):
		$CoinSound.play()
		Globals.coinSound = false
func _physics_process(delta):
	if(Globals.canmove):
		if not is_on_floor():
			velocity.y += gravity * delta
		if($HoneySprite.animation != "slimed_right" and $HoneySprite.animation != "slimed_left"):
			if (Input.is_action_just_pressed("up")) and is_on_floor():
				velocity.y = JUMP_VELOCITY
			var direction = Input.get_axis("left", "right")
			if(direction == 1):
				$HoneySprite.play("walk_right")
				lastdir = 1
			elif(direction == -1):
				$HoneySprite.play("walk_left")
				lastdir = -1
			else:
				if(lastdir == 1):
					$HoneySprite.play("Idle right")
				else:
					$HoneySprite.play("Idle left")	
			Globals.dir = lastdir
			if direction:
				velocity.x = direction * SPEED
			else:
				velocity.x = move_toward(velocity.x, 0, SPEED)

		move_and_slide()
