extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

var numberQuestion = 1
var question =""

func _process(delta):
	$AnimatedSprite2D.play("default")
	
	
	
	
	

func _on_left_pressed():
	if (numberQuestion == 1):
		$Label.text = "گاهی گوش میدم."
		$left.text = "به اکسسوری علاقه داری؟"
		$right.text = "چرا میخوای خودتو خونسرد نشون بدی؟"
		question = "music"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "9lastnight"):
		$Label.text = "خیلی برام جالب نیست."
		
		
		question = "accessory"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		numberQuestion+=1
	elif (numberQuestion == 2 and question == "music"):
		$Label.text = "خیلی برام جالب نیست."
	
		question = "accessory"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		numberQuestion+=1
	

func _on_right_pressed():
	if (numberQuestion == 1):
		$Label.text = "تو پارک میدویدم."
		$right.text = "چرا میخوای خودتو خونسرد نشون بدی؟"
		$left.text = "به اکسسوری علاقه داری؟"
		question = "9lastnight"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "9lastnight"):
		$Label.text = "دلیلی برای نگرانی هست؟"
		
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		question = "angry"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "music"):
		$Label.text = "دلیلی برای نگرانی هست؟"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		question = "angry"
		
		numberQuestion+=1
		
	


func _on_button_pressed():
	
	get_tree().change_scene_to_file("res://interrogationRoom/interrogationRoom.tscn")
