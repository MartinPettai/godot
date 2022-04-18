extends Node

#var player = {"posx":1, "posy":2, "health":100, "gold":500, "items":["sword", "bow"]}



func _ready():
	var nimi = ""
	var pikkus=0
	var koik_mangijad=[]
	var sisu=["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","	Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin",	"Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins",	"Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey",	"Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]
	print("mängijaid: ", len(sisu))
	print(sisu[0])
	sisu.erase("Reyes")
	sisu.sort()
	sisu.append("Martin")
	for player in sisu:
		if len(player)>pikkus:
			pikkus=len(player)
			nimi=player
		print(player)
	print("pikim nimi: ", pikkus,", ", nimi)

		
