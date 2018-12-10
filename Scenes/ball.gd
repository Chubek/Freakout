extends KinematicBody2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var launch = false
var ball_speed = 10
var velocity = Vector2(0, -1)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

		
		

func _physics_process(delta):
	if launch:
		var collision = move_and_collide(velocity * ball_speed)
		
		if collision:
			get_node("pop").play()
			velocity = velocity.bounce(collision.normal)
			
	
		
		
func _input(event):
	if event.is_action_pressed("ui_select"):
		launch = true
