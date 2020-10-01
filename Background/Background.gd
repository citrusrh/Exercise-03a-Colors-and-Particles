extends ColorRect

onready var HUD = get_node("/root/Game/HUD")

func _ready():
	HUD.connect("changed",self,"_on_HUD_changed")
	update_color()


func update_color():
	if HUD.color_background:
		pass #self.color = Color8(230, 252, 245)
	else:
		pass #self.color = Color(1,1,1,1)

func _on_HUD_changed():
	update_color()
