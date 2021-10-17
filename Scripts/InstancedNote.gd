extends VBoxContainer

var saveTittle = null
var saveContent = null
onready var tittle = $HBoxContainer/VBoxContainer/Tittle
onready var content = $Content

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_SaveButton_pressed():
	if tittle.text != "":
		if saveContent != null:
			save_text()
			queue_free()
	else:
		#ask to put a name
		pass
#	saveDirection.text = content.text
#	saveTittle.text = tittle.text
	
	
	pass # Replace with function body.

func set_save_direction(aTittle : Object, aContent : Object):
	saveTittle = aTittle
	saveContent = aContent 
	set_text(saveTittle.text, saveContent.text)

func set_text(aTittle : String, aContent : String):
	if aTittle != "New Note":
		tittle.text = aTittle
	content.text = aContent
	pass

func save_text():
	saveTittle.text = tittle.text
	saveContent.text = content.text


func _on_Tittle_enter(_new_text):
	pass
#	content.grab_focus()
#	yield(get_tree().create_timer(0.1),"timeout")



func _on_Content_focus_entered():
	pass # Replace with function body.
