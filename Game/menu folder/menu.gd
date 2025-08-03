extends Control
#função do grupo button
func _ready() -> void:
	for button in get_tree().get_nodes_in_group("button"):
		button.mouse_entered.connect(func(): button.modulate.a = 0.5)
		button.mouse_exited.connect(func(): button.modulate.a = 1.0)
#codigo do botão de site ele que faz funcionar o botão do menu
		if button.name == "site":
			button.pressed.connect(func(): OS.shell_open("https://sites.google.com/view/computaria-inc/in%C3%ADcio"))
		else:
			button.pressed.connect(func(): on_button_pressed(button))
#função dos botões de menu esse é o resto o quit e controles e etc...
func on_button_pressed(button: Button) -> void:
	match button.name:
		"play":
			get_tree().change_scene_to_file("res://Game/3ads/3adsTHEGAME.tscn")  # ajuste o caminho
#diretorio do play
		"controls":
			get_tree().change_scene_to_file("res://scenes/interface/controls_screen.tscn")#diretorio do controles

		"quit":#quit
			get_tree().quit()
