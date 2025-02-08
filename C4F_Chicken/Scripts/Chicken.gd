extends Node2D

@export var speed = 500

# Updates every frame
func _process(delta: float) -> void:
    if Input.is_key_pressed(KEY_D) : position.x += speed * delta;
    if Input.is_key_pressed(KEY_A) : position.x -= speed * delta;
    if Input.is_key_pressed(KEY_W) : position.y -= speed * delta;
    if Input.is_key_pressed(KEY_S) : position.y += speed * delta;
    
    position.x = clamp(position.x, 0, get_viewport_rect().size.x)
    position.y = clamp(position.y, 0, get_viewport_rect().size.y)
