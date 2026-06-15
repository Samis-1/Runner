extends Node2D

@export var velocidade: int
func _ready() -> void:
	velocidade = 400

func _process(delta: float) -> void:
	
	$Fundo.position.x -= velocidade*delta*0.05
	$Fundo2.position.x -= velocidade*delta*0.05
	if $Fundo.position.x < -1152:
		$Fundo.position.x = 1152
	if $Fundo2.position.x < -1152:
		$Fundo2.position.x = 1152
	
	$Meio_azul.position.x -= velocidade*delta*0.25
	$Meio_azul2.position.x -= velocidade*delta*0.5
	if $Meio_azul.position.x < -1152:
		$Meio_azul.position.x = 1152
	if $Meio_azul2.position.x < -1152:
		$Meio_azul2.position.x = 1152
	
	$Chão.position.x -= velocidade*delta*2
	$Chão2.position.x -= velocidade*delta*2
	if $Chão.position.x < -1152:
		$Chão.position.x = 1152
	if $Chão2.position.x < -1152:
		$Chão2.position.x = 1152
