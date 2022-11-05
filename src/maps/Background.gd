# class_name

extends Sprite

# signals

# enums

# constants
const VELOCITY = 15

# exported variables

# public variables
var texture_height = 0

# private variables

# onready variables


# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	texture_height = texture.get_size().y * scale.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.y -= VELOCITY
	reposition_sprite()


func reposition_sprite():
	if position.y < -texture_height:
		position.y += 2 * texture_height
