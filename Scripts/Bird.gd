extends KinematicBody2D

var motion = Vector2(0,0)

var UP = Vector2(0,-1)
var SPEED = 50
var JUMP_HEIGHT = -225
var GRAVITY = 20
var freeToMove = true

enum GAME_STATE{
	not_running,
	running,
	finish
}

var game_state = GAME_STATE.not_running


func _process(delta):
	if game_state == GAME_STATE.running:
		pass
	else:
		if Input.is_action_pressed("mouse"):
			game_state = GAME_STATE.running
		
		else:
			game_state = GAME_STATE.not_running

	if game_state ==  GAME_STATE.running:
		Input.is_action_pressed("mouse")
		if freeToMove == true:
			motion.x = SPEED
			if Input.is_action_pressed("mouse"):
				motion.y = JUMP_HEIGHT
		elif freeToMove == false:
		 print("oof", freeToMove)
		 return
		motion.y = motion.y + GRAVITY
		motion = move_and_slide(motion, UP)
		
	

