extends Area2D

# Called when another body enters the coin's area
func _on_Coin_body_entered(body):
	# Check if the body is the player (change "Player" to your player node's name)
	if body.name == "Player":

		# Remove the coin from the game scene
		queue_free()
