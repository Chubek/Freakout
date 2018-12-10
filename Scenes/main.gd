extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var blocks
signal all_destroyed
# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("music").play()
	get_node(".").connect("all_destroyed", self, "_all_destroyed")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	pass
	if not get_node("ball").launch:
		get_node("ball").position = get_node("paddle").position
	blocks = get_tree().get_nodes_in_group("blocks").size()
	get_node("Label").text = str(blocks)
	
	if blocks == 0:
		emit_signal("all_destroyed")
	
func _all_destroyed():
	get_node("Control").visible = true