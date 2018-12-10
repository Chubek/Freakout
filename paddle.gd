extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var paddle_speed = 5



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
	
		
func _physics_process(delta):
	if Input.is_key_pressed(KEY_LEFT):
		move_and_collide(Vector2(-1, 0) * paddle_speed)
		
	elif Input.is_key_pressed(KEY_RIGHT):
		move_and_collide(Vector2(1, 0) * paddle_speed)
		
	
	
		
	
		
