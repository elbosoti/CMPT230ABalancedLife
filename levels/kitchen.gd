extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass




func _on_door_mouse_exited():
	$Door/DoorSprite.scale = Vector2(1,1)

func _on_door_mouse_entered():
	$Door/DoorSprite.scale = Vector2(1.2,1.2)

func _on_clock_mouse_exited():
	$Clock/ClockSprite.scale = Vector2(1,1)

func _on_clock_mouse_entered():
	$Clock/ClockSprite.scale = Vector2(1.2,1.2)


func _on_door_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		get_tree().change_scene_to_file("res://levels/living_room.tscn")


func _on_clock_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		BackgroundMusic.stream = preload("res://music/Elevator Music SPED UP v1 Contreras Woelfle.wav")
		BackgroundMusic.play()
		BackgroundMusic.player_texture = preload("res://art/objects/geenie2.png")
