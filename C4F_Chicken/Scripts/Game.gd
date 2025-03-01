extends Node2D

@export var chicken    : Area2D
@export var scoreboard : Label
@export var car        : PackedScene

var score : int

func spawnCar() -> void :
    var newCar : Node2D = car.instantiate()
    newCar.position.y = get_viewport_rect().size.y
    newCar.position.x = randf_range(150, get_viewport_rect().size.x - 150)
    newCar.name = "Car"
    add_child(newCar)

func _on_pavement_left_body_entered(body: Area2D) -> void:
    if body == chicken and score % 2 == 1 :
        score += 1
        scoreboard.text = str(score)

func pavement_right(body : Area2D) -> void:
    if body == chicken and score % 2 == 0:
        score += 1
        scoreboard.text = str(score)

func resetScore() -> void :
    score = 0
    scoreboard.text = str(score)
