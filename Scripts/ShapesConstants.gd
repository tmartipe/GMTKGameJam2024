extends Node

var Q = {
	"comun" : preload("res://Assets/Personaje/Q.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/Q.png") as CompressedTexture2D,
	"nombre": "Q"
	}
var W = {
	"comun" : preload("res://Assets/Personaje/W.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/W.png") as CompressedTexture2D,
	"nombre": "W"
	}
var E = {
	"comun" : preload("res://Assets/Personaje/E.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/E.png") as CompressedTexture2D,
	"nombre": "E"
	}
var QW = {
	"comun" : preload("res://Assets/Personaje/QW.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/QW.png") as CompressedTexture2D,
	"nombre": "QW"
	}
var QE = {
	"comun" : preload("res://Assets/Personaje/QE.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/QE.png") as CompressedTexture2D,
	"nombre": "QW"
	}
var WE = {
	"comun" : preload("res://Assets/Personaje/WE.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/WE.png") as CompressedTexture2D,
	"nombre": "WE"
	}
var QWE = {
	"comun" : preload("res://Assets/Personaje/QWE.png") as CompressedTexture2D,
	"negro" : preload("res://Assets/Personaje/Negro/QWE.png") as CompressedTexture2D,
	"nombre": "QWE"
	}
var Default = { "comun" = preload("res://Assets/Personaje/Default.png") as CompressedTexture2D, "nombre" = "default" }

var allShapesArray = [Q,W,E,QW,QE,WE,QWE]
