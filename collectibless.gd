extends Area2D

func _on_body_entered(body):
	if body.is_in_group("player"):
		body.collect_coin()  # Call player's coin collection function
		queue_free()  # Remove coin from scene

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))
	
