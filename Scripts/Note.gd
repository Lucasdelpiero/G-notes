extends MarginContainer

onready var InstancedNote = preload("res://Scenes/InstancedNote.tscn")
onready var tittle = $Tittle
onready var savedText = $SavedText


func _on_Button_pressed():
#	$TextEdit.visible = true
	var instancedNote = InstancedNote.instance()
	get_tree().get_root().add_child(instancedNote)
#	instancedNote.set_text(tittle.text, savedText.text)
	instancedNote.set_save_direction(tittle, savedText)


