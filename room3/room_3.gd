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
		$Label.text = "اون قضیه مال سال‌ها پیش بود. من قاتل نیستم."
		$left.text = "به موسیقی علاقه داری؟"
		$right.text = "آیا ریزش مو داری؟"
		question = "music"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "9lastnight"):
		$Label.text = "گاهی شجریان گوش میدهم."
		
		
		question = "accessory"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		numberQuestion+=1
	elif (numberQuestion == 2 and question == "music"):
		$Label.text = "گاهی شجریان گوش میدهم."
	
		question = "accessory"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		numberQuestion+=1
	

func _on_right_pressed():
	if (numberQuestion == 1):
		$Label.text = "معلم ریاضی."
		$right.text = "آیا ریزش مو داری؟"
		$left.text = "به موسیقی علاقه داری؟"
		question = "9lastnight"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "9lastnight"):
		$Label.text = "فکر نمیکنم به شما ربطی داشته باشه."
		
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		question = "angry"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "music"):
		$Label.text = "فکر نمیکنم به شما ربطی داشته باشه."
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		question = "angry"
		numberQuestion+=1
		
	


func _on_button_pressed():
	get_tree().change_scene_to_file("res://interrogationRoom/interrogationRoom.tscn")
