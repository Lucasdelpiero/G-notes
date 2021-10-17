extends MarginContainer

onready var NewNote = preload("res://Scenes/Note.tscn")
onready var popupMenu = $PopupMenu


func _process(_delta):
#	var size = get_parent().rect_size.x / 2
#	rect_size = Vector2(size, size)
	pass

func _on_NotesConstructor_item_selected(index):
	match index:
		0:
			var newNote = NewNote.instance()
			add_child(newNote)
			print(index)
	pass # Replace with function body.



func _on_PopupMenu_id_pressed(id):
	match id:
		0:
			var newNote = NewNote.instance()
			get_parent().add_child(newNote)
			newNote.rect_position = rect_position
			print(id)
		1:
			print("ffff")
	raise()

func _on_TextureButton_pressed():
	popupMenu.popup()
	popupMenu.rect_global_position = rect_global_position
	

