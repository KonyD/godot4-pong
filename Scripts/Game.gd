extends Node2D

func _process(delta):
	$Label.text = str(Main.p1_score)
	$Label2.text = str(Main.p2_score)

func _on_top_body_entered(body):
	body.direction.y *= -1


func _on_bottom_body_entered(body):
	body.direction.y *= -1


func _on_left_body_entered(body):
	body.direction.x *= -1
	body.global_position = Vector2(578, 320)
	Main.p2_score += 1


func _on_right_body_entered(body):
	body.direction.x *= -1
	body.global_position = Vector2(578, 320)
	Main.p1_score += 1
