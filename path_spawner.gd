extends Node2D


@onready var path = preload("res://Assets/SoldierA/stage1.tscn")


func _on_timer_timeout() -> void:
	var ChildrenCount = get_children()
	if len(ChildrenCount) <= 5:
		var tempPath = path.instantiate()
		add_child(tempPath)
