extends Node2D

var player_preload = preload("res://scenes/player/player.tscn")
var player = player_preload.instantiate()
var pipesection_preload = preload("res://scenes/pipes/pipesection.tscn")
var pipesection = pipesection_preload.instantiate()

func _ready() -> void:
	get_node(".").add_child(pipesection)
	get_node(".").add_child(player)

func _physics_process(delta: float) -> void:
	if g.alive == false:
		get_tree().change_scene_to_file("res://scenes/gameover/gameover.tscn")
