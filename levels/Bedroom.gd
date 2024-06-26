extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_mouse_entered():
	$Door/DoorSprite.scale = Vector2(1.2,1.2)



func _on_door_mouse_exited():
	$Door/DoorSprite.scale = Vector2(1,1)
	


func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()


func _on_door_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		get_tree().change_scene_to_file("res://levels/kitchen.tscn")
