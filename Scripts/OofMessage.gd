extends KinematicBody2D
var motion = Vector2(0,0)
var SPEED = 50


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
		if visible == true:
			motion.x = 0
		else:
			motion.x = SPEED
	
		motion = move_and_slide(motion)