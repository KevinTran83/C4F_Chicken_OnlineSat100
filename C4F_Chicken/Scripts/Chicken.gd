extends Node2D

@export var speed = 500
@export var sprite : AnimatedSprite2D

# Updates every frame
func _process(delta: float) -> void:
    if Input.is_key_pressed(KEY_D) :
        position.x += speed * delta;
        sprite.flip_h = false
    if Input.is_key_pressed(KEY_A) :
        position.x -= speed * delta;
        sprite.flip_h = true
    if Input.is_key_pressed(KEY_W) : position.y -= speed * delta;
    if Input.is_key_pressed(KEY_S) : position.y += speed * delta;
    
    position.x = clamp(position.x, 0, get_viewport_rect().size.x)
    position.y = clamp(position.y, 0, get_viewport_rect().size.y)
    
    if Input.is_key_pressed(KEY_D) or Input.is_key_pressed(KEY_A)\
    or Input.is_key_pressed(KEY_W) or Input.is_key_pressed(KEY_S):
           sprite.play("Running")
    else : sprite.play("Idle")
