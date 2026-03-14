extends CanvasLayer

var tutorialstep = 1

func _input(event: InputEvent) -> void:
	if !UserInterface.hasdonetutorial:
		if Input.is_action_just_pressed("ui_up") or Input.is_action_just_pressed("ui_down") or Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right"):
			if tutorialstep == 1:
				tutorialstep = 2
				$AnimationPlayer.play("step1finished")
		if Input.is_action_just_pressed("interact"):
			if tutorialstep == 2:
				tutorialstep = 3
				$AnimationPlayer.play("step2finished")
		if Input.is_action_just_pressed("select_slot_2"):
			if tutorialstep == 3:
				tutorialstep = 4
				$AnimationPlayer.play("step3finished")
		if Input.is_action_just_pressed("attack"):
			if tutorialstep == 4:
				tutorialstep = 5
				UserInterface.hasdonetutorial = true
				$AnimationPlayer.play("step4finished")
