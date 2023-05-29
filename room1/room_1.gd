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
		$Label.text = "موسیقی به من آرامش میده."
		$left.text = "به اکسسوری علاقه داری؟"
		$right.text = "چرا نگران هستی؟"
		question = "music"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "9lastnight"):
		$Label.text = "باهاشون حال میکنم."
		$right.text = "شغلت چیه؟"
		$left.text = "مقتول رو میشناسی؟"
		question = "accessory"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		numberQuestion+=1
	elif (numberQuestion == 2 and question == "music"):
		$Label.text = "باهاشون حال میکنم."
		$right.text = "شغلت چیه؟"
		$left.text = "مقتول رو میشناسی؟"
		question = "accessory"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		numberQuestion+=1
	

func _on_right_pressed():
	if (numberQuestion == 1):
		$Label.text = "خونه دوستم."
		$right.text = "چرا نگران هستی؟"
		$left.text = "به اکسسوری علاقه داری؟"
		question = "9lastnight"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "9lastnight"):
		$Label.text = "منتظر پیدا شدن قاتل هستم."
		$right.text = "شغلت چیه؟"
		$left.text = "مقتول رو میشناسی؟"
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		question = "angry"
		numberQuestion+=1
		
	elif (numberQuestion == 2 and question == "music"):
		$Label.text = "منتظر پیدا شدن قاتل هستم."
		$right.visible = false
		$left.visible = false
		$Button.visible = true
		question = "angry"
		numberQuestion+=1
		
	


func _on_button_pressed():
	
	get_tree().change_scene_to_file("res://interrogationRoom/interrogationRoom.tscn")
