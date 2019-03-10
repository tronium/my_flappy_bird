extends Node

func _ready():
	pass

func _process(delta):
	$OofMessage.hide()
	var finish = $Bird/Area2D.get_overlapping_areas()
	if  len(finish) == 1:
		print("Finished")
		$Bird.freeToMove = false
		$OofMessage.show()
		if Input.is_action_pressed("mouse"):
			get_tree().reload_current_scene()
		else:
			pass
		

