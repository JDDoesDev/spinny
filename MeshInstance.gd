extends RigidBody3D
@onready var character = $"../CharacterBody3D"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_3d_body_entered(body):
	print(body)
	var direction = global_position.direction_to(body.global_position)
	var facing = global_transform.basis.tdotz(direction)
	var fov = cos(deg_to_rad(70))
	print(cos(deg_to_rad(70)))
	print(facing)
	if facing > fov:
		print("In field of vision")
	pass # Replace with function body.
