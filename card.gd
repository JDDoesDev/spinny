extends Node2D

var selected = false

func _selected():
	selected = true
	modulate = Color.html("005500ff")

func _unselected():
	selected = false
	modulate = Color.html("000000ff")

func _on_area_2d_input_event(viewport, event, shape_idx):
	if event.is_action("grab"):
		if selected:
			_unselected()
		else:
			_selected()
	pass # Replace with function body.
