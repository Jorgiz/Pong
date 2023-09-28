extends Area2D

@export var speed := 10.

var h_side: int
var v_side: float


func _ready() -> void:
	randomize()
	h_side = [1, -1].pick_random()
	v_side = randf_range(-1,1)


func _physics_process(delta: float) -> void:
	var velocity : Vector2
	
	velocity.x = h_side
	velocity.y = v_side
	
	velocity = velocity.normalized() * speed
	
	position += velocity


func _flip_v_side(area: Area2D) -> void:
	v_side *= -1


func _ball_hitted(area: Area2D) -> void:
	h_side *= -1
	v_side = randf_range(-1,1)
