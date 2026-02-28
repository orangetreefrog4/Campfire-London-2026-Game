extends RigidBody2D

var speed_factor = 10

func _input(event: InputEvent) -> void:
	if Input.is_key_pressed(KEY_SPACE):
		apply_force(Vector2(0, -5))

func _physics_process(delta: float) -> void:
	apply_force(Vector2(0.1,0))
