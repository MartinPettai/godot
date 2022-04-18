extends Node


# Martin Pettai
# 05.04.22
# ülesanne1
var nimi="mees"
var elud = 0
var arv1=2
var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready():
	print(nimi," ",elud)
	print(len(nimi))
	print(elud+arv1)
	rng.randomize()
	var my_random_number = rng.randi_range(0, 19)
	print("suvaline number: ",my_random_number)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
