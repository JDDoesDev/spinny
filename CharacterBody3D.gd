extends CharacterBody3D

@export var scale_val: Vector3

func _ready():
	scale = scale_val
	
	printt(scale)
	pass
