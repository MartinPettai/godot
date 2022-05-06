extends Node
var botskoor=0
var inimeseskoor=0
var valik
var avalik
var elemendid=["Kivi", "Paber", "Käärid"]

func pela(valik):
	if inimeseskoor==10:
		$"Skor".text="Mäng Läbi! Sa Võitsid!"
	elif botskoor==10:
		$"Skor".text="Mäng Läbi! Sa kaotasid!"
	if inimeseskoor==10 or botskoor==10:
		get_tree().paused=true
	elemendid.shuffle()
	avalik=elemendid[0]
	$"Valik2".text=avalik
	
	
	if avalik==valik:
		pass
	if avalik=="Kivi" and valik=="Paber":
		inimeseskoor+=1
	if avalik=="Käärid" and valik=="Paber":
		botskoor+=1
	if avalik=="Paber" and valik=="Kivi":
		botskoor+=1
	if avalik=="Paber" and valik=="Käärid":
		inimeseskoor+=1
	if avalik=="Käärid" and valik=="Kivi":
		inimeseskoor+=1
	$"Punktid1".text="Skoor: "+ str(inimeseskoor)
	$"Punktid2".text="Skoor: "+ str(botskoor)
	
		
		


func _on_Kivi_pressed():
	$"Valik1".text="Kivi"
	pela("Kivi")

func _on_Paber_pressed():
	$"Valik1".text="Paber"
	pela("Paber")

func _on_Krid_pressed():
	$"Valik1".text="Käärid"
	pela("Käärid")

func _on_Uus_Mng_pressed():
	pass
