extends Spatial

onready var mesh_CUBE = $MeshInstance
onready var mesh_TRIANGLE = $MeshInstance2
onready var mesh_MEAT = $Raw_meat

onready var authorTEXT = $Label
onready var tween = $Tween


export var speed : float = 20.0

var axisX = Vector3(45,0,0)
var axisY = Vector3(0,45,0)
var axisZ = Vector3(0,0,45)
var All = Vector3(45,45,45)


func _enter_tree():
	_ready()

func _ready():

	set_process(false)
	set_process_input(false)
	set_physics_process(false)



func _on_Button_pressed():
	set_physics_process(true)


func _physics_process(delta):

	mesh_CUBE.rotate_x((deg2rad(45) + speed) * delta)
	mesh_CUBE.rotate_y((deg2rad(45) + speed) * delta)
	mesh_CUBE.rotate_z((deg2rad(45) + speed) * delta)


	mesh_TRIANGLE.rotate_x((deg2rad(45) + speed) * delta)
	mesh_TRIANGLE.rotate_y((deg2rad(45) + speed) * delta)
	mesh_TRIANGLE.rotate_z((deg2rad(45) + speed) * delta)


	mesh_MEAT.rotate_x((deg2rad(45) + speed) * delta)
	mesh_MEAT.rotate_y((deg2rad(45) + speed) * delta)
	mesh_MEAT.rotate_z((deg2rad(45) + speed) * delta)


func _on_Button3_pressed():
	get_tree().quit()


func _on_Button2_pressed():
	set_physics_process(false)




func _on_Button4_pressed():

	mesh_CUBE.visible = false
	mesh_TRIANGLE.visible = true



func _on_Button5_pressed():


	tween.interpolate_property(authorTEXT,"rect_position",Vector2(498,179),Vector2(550,550),7,Tween.TRANS_ELASTIC,Tween.EASE_OUT)
	tween.start()















func _on_Button6_pressed():

	mesh_CUBE.visible = false
	mesh_TRIANGLE.visible = false
	mesh_MEAT.visible = true
