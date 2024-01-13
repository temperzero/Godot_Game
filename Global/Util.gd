extends Node


const SAVE_PATH = "res://savegame.bin"


func _saveGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.WRITE)
	var data: Dictionary = {
		"PlayerHP" : Game.playerHP,
		"Gold" 	   : Game.gold,
	}
	var jstr = JSON.stringify(data)
	file.store_line(jstr)
	
func _loadGame():
	var file = FileAccess.open(SAVE_PATH, FileAccess.READ)
