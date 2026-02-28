extends Node2D

var initial_position

func _ready():
	initial_position = position

func _on_area_2d_area_entered(area: Area2D) -> void:
	var tween = create_tween()
	tween.tween_property(self, "$Collision", initial_position - Vector2(32, 0), 1.0)
	
func _on_area_2d_area_exited(area: Area2D) -> void:
	var tween = create_tween()
	tween.tween_property(self, "position", initial_position, 1.0)
	
