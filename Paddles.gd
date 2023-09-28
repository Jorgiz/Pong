extends CharacterBody2D

@export var speed := 300.


func _physics_process(delta: float) -> void:
	var input = Input.get_axis("up", "down")
	
	velocity.y = input * speed
	
	move_and_slide()
