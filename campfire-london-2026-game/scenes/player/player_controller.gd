extends RigidBody2D

func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_W):
		apply_force(Vector2(0,-5))
	if Input.is_key_pressed(KEY_S):
		apply_force(Vector2(0,5))
	if Input.is_key_pressed(KEY_SPACE):
		g.player_speed += 0.1
		get_node("Camera2D/SubViewportContainer/SubViewport/Control/SpeedUI").set("visible",true)

func _physics_process(delta: float) -> void:
	g.player_position = position
	position.x += g.player_speed
