target := "arduino"

default:
	just --list

flash file:
	tinygo flash -target={{target}} {{file}}

build file:
	tinygo build -target={{target}} -o build/main {{file}}