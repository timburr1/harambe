extends Control

func _ready():
  Globals.kills = 0
  Globals.currentStage = 0

func _on_QuitButton_pressed():
	get_tree().quit()
	
func _on_StartButton_pressed():
  get_tree().change_scene("GameScene.tscn")
