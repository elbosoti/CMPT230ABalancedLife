extends AudioStreamPlayer2D
var player_texture = preload("res://art/objects/geenie1.png")
var current_music = preload("res://music/Elevator Music CALM v1 Contreras Woelfle.wav")
# Called when the node enters the scene tree for the first time.
func _ready():
	BackgroundMusic.stream = current_music
	BackgroundMusic.play()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


