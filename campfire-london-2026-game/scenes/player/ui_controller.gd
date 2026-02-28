extends Control

var formatted_time

func _ready() -> void:
	g.time_m = 0
	g.time_s = 0
	formatted_time = (str(g.time_m) + ":" + str(g.time_s))
	get_node("Time").set("text", formatted_time)

func _physics_process(delta: float) -> void:
	get_node("Score").set("text",g.score)
	get_node("SpeedUI/Speed").set("text",g.player_speed)

func _1s_passed() -> void:
	if g.time_s == 59:
		g.time_s = 0
		g.time_m += 1
	else:
		g.time_s += 1
	formatted_time = (str(g.time_m) + ":" + str(g.time_s))
	get_node("Time").set("text", formatted_time)
