extends Sprite

var move_direction: Vector2 = Vector2.ZERO
var speed: float = 0.0

func _ready() -> void:
	speed = rand_range(1.0, 3.0)
	move_direction = Vector2.ONE.rotated(deg2rad(rand_range(0, 360)))

func _process(delta: float) -> void:
	position += move_direction * speed;
	
	if position.x > get_viewport_rect().size.x or position.x < 0:
		move_direction.x *= -1
	if position.y > get_viewport_rect().size.y or position.y < 0:
		move_direction.y *= -1
