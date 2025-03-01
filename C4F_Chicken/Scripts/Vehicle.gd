extends Node2D

@export var speed = 500
@export var sprite : AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
    sprite.play( sprite.sprite_frames.get_animation_names()[randi() % 4] )


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
    position.y -= speed * delta
