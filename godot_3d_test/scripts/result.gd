extends Control

onready var lbl1 = $Label

func _ready():
	lbl1.text="Test result:\n\nSimple test: ~"+ str(round(G.testFPS[1])) + " FPS\nParticle System: ~"+ str(round(G.testFPS[2])) + " FPS\nDynamic lights: ~"+ str(round(G.testFPS[3])) + " FPS"


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	get_tree().change_scene("res://environment/Menu.tscn")
