extends Node2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	
	$Fundo.position.x -= velocidade*delta
	$Fundo2.position.x -= velocidade*delta
	if $Fundo.position.x < -1152:
		$Fundo.position.x = 1152
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152
	
	$Chão.position.x -= velocidade*delta
	$Chão2.position.x -= velocidade*delta
	if $Chão.position.x < -1152:
		$Chão.position.x = 1152
	if $Chão2.position.x < -1152:
		$Chão2.position.x = 1152
