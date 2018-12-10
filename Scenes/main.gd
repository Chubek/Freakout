extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("music").play()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	if not get_node("ball").launch:
		get_node("ball").position = get_node("paddle").position
	
	get_node("Label").text = str(get_node("block_1").destroyed)
	