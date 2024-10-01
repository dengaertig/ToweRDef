extends CharacterBody2D


@export var speed = 800
var Health = 10
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	get_parent().set_progress(get_parent().get_progress() + speed*delta)
	get_node("Node2D").get_child(0).value = Health
	

	if get_parent().get_progress_ratio() == 1:
		queue_free()
	
	
	
		
	if Health <= 0:
		get_parent().get_parent().queue_free()
