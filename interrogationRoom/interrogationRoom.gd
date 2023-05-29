extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.

func _process(delta):
	pass 
func _on_button_4_pressed():
	get_tree().change_scene_to_file("res://Objects/objects.tscn")


func _on_button_pressed():
	get_tree().change_scene_to_file("res://room1/room_1.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://room2/room_2.tscn")


func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://room3/room_3.tscn")


func _on_button_5_pressed():
	get_tree().change_scene_to_file("res://decide/decide.tscn")
