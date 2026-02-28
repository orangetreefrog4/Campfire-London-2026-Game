extends Node2D

var pipe_position_y

func _repipe_pipes() -> void:
	pipe_position_y = ((704 / 9) + (704 / 9) * randi_range(1,8))
	print("Pipe position: ")
	print(pipe_position_y)
	global_position.y = pipe_position_y
