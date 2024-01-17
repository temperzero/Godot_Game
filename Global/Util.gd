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
	if FileAccess.file_exists(SAVE_PATH): # if file exists - return true. can add == true
		if not file.eof_reached():
			var current_line = JSON.parse_string(file.get_line())
			if current_line:
				Game.playerHP = current_line["PlayerHP"]
				Game.gold = current_line["Gold"]
		
