extends Area2D

func _ready():
	connect("body_entered", self, "_on_body_entered")

func _on_body_entered(body):
	if body.is_in_group("Player"):
		body.add_score(1)  # Increase player's coin count
		queue_free()       # Remove the coin from the scene
