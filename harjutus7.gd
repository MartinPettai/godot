extends Node

var salv = 7
var hp = 100
var damage = 0
var hit = 0
var loop = true
var lask = 0
var kuulid = 7

func _ready():
	pass
	
func _process(delta):
	$"Kuulid".text = "Kuulid: "+ str(salv)
	$"Elud".text = "Elud: "+ str(hp)
	
	var random = RandomNumberGenerator.new()
	random.randomize()
	var rand = random.randi_range(8,12)
	
	if Input.is_action_just_pressed("tulista") and salv > 0 and hp > 0:
		lask += 1
		$"Lasud".text = "Laske: "+  str(lask)
		salv -= 1
		$"Tekst".text = "piu piu"
		hp -= rand
	if Input.is_action_just_pressed("reload"):
		salv = 5
		$"Tekst".text = "Laen...."
	if hp <= 0:
		hp = 0
		$"Elud".text = "Elud: "+ str(hp)
		$"GameOver".text = "Game Over!"
		print("Laske: ", lask)
		$"GameOver".text = "Game Over!"

		get_tree().paused = true
