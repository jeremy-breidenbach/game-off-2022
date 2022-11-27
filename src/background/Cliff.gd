# class_name

extends StaticBody2D


# signals
# enums

# constants
const VELOCITY = 15

# exported variables

# public variables
var texture_height = 0

# private variables

# onready variables
onready var sprite = $Sprite

# built in _ready method
# Called when the node enters the scene tree for the first time.
func _ready():
	texture_height = sprite.texture.get_size().y * scale.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta):
	position.y -= VELOCITY
	reposition_node()


func reposition_node():
	if position.y < -texture_height:
		position.y += 2 * texture_height


