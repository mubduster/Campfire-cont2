extends Area2D
signal activated(state)

func _on_area_entered(body):
	emit_signal("activated", "open")

func _on_area_exited(body):
	emit_signal("activated", "close")
