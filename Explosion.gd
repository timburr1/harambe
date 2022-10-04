extends Node2D

func _ready():
	print("Explode")
	
	$AnimationPlayer.play("Explode")
