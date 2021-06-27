extends Control

# Timestamps of frames rendered in the last second
var times := []

# Frames per second
var fps := 0

onready var lbl1 = $Label
onready var lbl2 = $Label2
export var numberlevel = 0
export var textlevel = "Test" 

func _ready():
	if numberlevel>0: 
		lbl2.text = "Test "+str(numberlevel)+"\n"+ textlevel
	else:
		lbl2.text = ""
	
func _process(_delta: float) -> void:
	var now := OS.get_ticks_msec()

	# Remove frames older than 1 second in the `times` array
	while times.size() > 0 and times[0] <= now - 1000:
		times.pop_front()

	times.append(now)
	fps = times.size()

	# Display FPS in the label
	lbl1.text = "FPS: " + str(fps)
	G.testFPS[numberlevel]=(G.testFPS[numberlevel]+fps)/2
