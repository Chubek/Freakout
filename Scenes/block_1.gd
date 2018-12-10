extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var collision
var destroyed = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	add_to_group("blocks")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	collision = move_and_collide(Vector2())
	
	if collision:
		destroyed += 1
		queue_free()