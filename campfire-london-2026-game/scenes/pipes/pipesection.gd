extends Node2D

signal repipe_pipes

func _ready() -> void:
	repipe_pipes.emit()

func _on_next_trigger_body_entered(body: Node2D) -> void:
	print("NEXT!")
	g.player_speed += 0.1
	print("New speed is " + g.player_speed)
	repipe_pipes.emit()
	get_node("Moving").set("position", Vector2((get_node("Moving").get("position").x + 1088),372))
