extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var raha=50
var kaup=65
var kulg1 = 5
var kulg2 =6
# Called when the node enters the scene tree for the first time.
func _ready():
	if raha > kaup:
		print ("Sul on piisavalt raha")
	elif raha < kaup:
		print ("sul jääb raha puudu")
	if kulg1==kulg2:
		print("see on ruut")
		print("selle pindala on ",kulg1*kulg2)
	else:
		print("see on ristkülik")
		print("selle pindala on ",kulg1*kulg2)



# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
