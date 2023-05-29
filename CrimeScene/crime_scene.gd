extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
	

var status1 = true
var play = true
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if ($AudioStreamPlayer.playing):
		$AudioStreamPlayer3.stream_paused = true
	else:
		$AudioStreamPlayer3.stream_paused = false
		


	if $Camera2D.position.y < 320 and status1:
		$Camera2D.position.y +=2
		$Camera2D.position.x +=2
	if $Camera2D.position.x < 1300 and status1:
		$Camera2D.position.x +=2
	elif ($Camera2D.position.y ==-250):
		status1 = true
		
	else:
	
		status1 = false
		$Camera2D.position.x -=2
		$Camera2D.position.y -=2
	print($Camera2D.position.y)
	print($Camera2D.position.x)
	
	if ($Camera2D.position.y == -250 and $Camera2D.position.x == 1298):
		get_tree().change_scene_to_file("res://Objects/objects.tscn")
		
	

