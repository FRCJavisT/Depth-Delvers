extends CanvasLayer


func _ready() -> void:
	Parallax2d.visible = false

func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	Parallax2d.visible = true
	get_tree().change_scene_to_file("res://scenes/level.tscn")
	LayerPopup.show_layer(1)
