extends CharacterBody2D


var target
var Speed = 500
var pathName = ""
var bulletDamage

func _physics_process(delta: float) -> void:
	var pathSpawnerNode = get_tree().get_root().get_node("main/PathSpawner")
	for i in pathSpawnerNode.get_child_count():
		if pathSpawnerNode.get_child(i).name == pathName:
			target = pathSpawnerNode.get_child(i).get_child(0).get_child(0).global_position
			
	velocity = global_position.direction_to(target) *Speed
	look_at(target)
	
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if "SoliderA" in body.name:
		body.Health -= bulletDamage
		 
		
		queue_free()
