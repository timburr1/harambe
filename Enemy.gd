extends Node2D

var sprite
var speed = 100
onready var explode = preload("res://Explosion.tscn").instance()

func _ready():
	speed += (Globals.currentStage * 10)
	
func _enter_tree():
	sprite = Sprite.new()
	sprite.texture = load("res://assets/graphics/enemies/zookeeper.png")
	add_child(sprite)
	
func _process(delta):
	move_local_x(-delta*speed)

func _on_Area2D_area_entered(area):
	# print("Hit by bullet")
	
	if(area.get_collision_layer_bit(3)):
		explode.set_position(self.get_position())
		get_parent().add_child(explode)
		Globals.kills += 1
		queue_free()
