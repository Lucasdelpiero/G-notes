extends Control

onready var grid = $PanelContainer/ScrollContainer/MarginContainer/GridContainer

var notes = []
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):

	notes = grid.get_children()

	var size = (grid.rect_size.x - 4) / 2
	for note in notes:
		note.rect_size = Vector2(size, size)
		note.rect_min_size = Vector2(size, size)
#		grid.fit_child_in_rect(note, Rect2(Vector2(0,0), Vector2(size, size)))
#		note.rect_size.min_size = 
	pass
