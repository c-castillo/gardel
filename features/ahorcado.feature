Feature: Habilitar la validacion del ingreso de la letra por parte del usuario

Scenario: El usuario ingresa una letra a adivinar
	Given que ingreso una letra
	When presiono boton Enviar
	Then OK
