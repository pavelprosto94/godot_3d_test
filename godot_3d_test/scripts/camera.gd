extends Position3D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
onready var conrol = $"../Control"
var dellay = 0
var dovec=Vector3(0,0.08,-1)
export var end_dellay = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if dellay<end_dellay:
		translate(dovec*delta)
		dellay+=delta
	else:
		get_tree().change_scene("res://environment/test"+str(conrol.numberlevel+1)+".tscn")
	
