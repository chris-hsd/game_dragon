extends Camera2D

@export var strength := 12.0   # max. Auslenkung in Pixel
@export var decay := 30.0      # Abbau pro Sekunde

var _shake := 0.0

func shake(amount := strength) -> void:
	_shake = amount

func _process(delta: float) -> void:
	if _shake > 0.0:
		_shake = max(_shake - decay * delta, 0.0)
		offset = Vector2(randf_range(-_shake, _shake), randf_range(-_shake, _shake))
	else:
		offset = Vector2.ZERO
