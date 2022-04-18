extends Node

var elud = 100
var enemyname="joosep"
func _ready():
	while elud > 0:
		var random=RandomNumberGenerator.new()
		random.randomize()
		var dmg=random.randi_range(8, 15)
		elud-=dmg
		
		print("tema elud ", elud)
		print("dmg ", elud)
	
	
