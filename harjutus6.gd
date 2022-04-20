extends Node
var elud = 100
var enemyname="joosep"
var laskemoon=5
var skoor=0
var lasud=0
func _ready():
	print("******************Tapa koletis************************")
func _process(delta):

	if Input.is_action_just_released("tulista") and laskemoon>0:
		var random=RandomNumberGenerator.new()
		random.randomize()
		var dmg=random.randi_range(8, 12)
		elud-=dmg
		laskemoon-=1
		skoor+=10
		lasud+=1
		
		print("tema elud ", elud)
		print("damage ", dmg)
		print("kuule: ", laskemoon)
		
	if Input.is_action_just_released("reload"):
		print("reloading")
		laskemoon=5
	
	if elud < 0:
		print("Sa võitsid!")
		print("Sinu punktid: ", skoor)
		print("Kuule raisatud: ", lasud)
		get_tree().quit()
		
