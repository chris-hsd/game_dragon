extends CharacterBody2D

var speed:int = 200

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MoveAnimationPlayer.play('fly')

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var direction:Vector2
	var fire: bool
	direction = Input.get_vector("ui_left","ui_right","ui_up","ui_down")
	fire = Input.is_action_pressed("ui_accept")
	if fire:
		$FireAnimationPlayer.play('fire')
	velocity = direction * speed
	print(velocity)
	move_and_slide()
