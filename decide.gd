extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	

func _on_home_pressed():
	get_tree().change_scene_to_file("res://interrogationRoom/interrogationRoom.tscn")


func _on_home_4_pressed():
	get_tree().change_scene_to_file("res://result/win.tscn")


func _on_home_2_pressed():
	get_tree().change_scene_to_file("res://result/lose.tscn")


func _on_home_3_pressed():
	get_tree().change_scene_to_file("res://result/lose.tscn")
