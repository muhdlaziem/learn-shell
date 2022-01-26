#!/bin/bash

func1(){
	#declare sets the variable scope to local within this function
	#declare costcenter="Toronto"
	costcenter="Toronto"
	echo "Cost center:" $costcenter
}

func2(){
	func1
	echo $costcenter

}
func2
