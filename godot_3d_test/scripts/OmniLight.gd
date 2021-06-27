extends OmniLight

export var minval = 0.0
export var speed = 5
export var enblred = false

var c1 = 1
var c2 = 0.0
var l1 = 0.0
# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	c2=rand_range(minval, 1)
	l1=c2-c1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if l1<0:
		if c1<=c2:
			c2=rand_range(minval, 1)
			l1=c2-c1
	else:
		if c1>=c2:
			c2=rand_range(minval, 1)
			l1=c2-c1
	if c1==c2:
		c2=rand_range(minval, 1)
		l1=c2-c1	
	c1+=l1*delta*speed
	#print(str(c1)+"->"+str(c2))
	if enblred:
		light_color = Color(c1, c1, 1, 1)
	else:
		light_color = Color(0, c1, 1, 1)
