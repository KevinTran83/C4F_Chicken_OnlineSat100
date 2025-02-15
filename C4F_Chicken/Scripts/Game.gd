extends Node

@export var chicken    : Node2D
@export var scoreboard : Label

var score : int

func _on_pavement_left_body_entered(body: Node2D) -> void:
    if body == chicken and score % 2 == 1 :
        score += 1
        scoreboard.text = str(score)

func pavement_right(body : Node2D) -> void:
    if body == chicken and score % 2 == 0:
        score += 1
        scoreboard.text = str(score)
