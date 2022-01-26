#!/bin/bash

function sum()
{
	if test "$1" = "" && test "$2" = "" 
	then
		echo "x + y"
		return
	else
		echo "Result:" $(($1 + $2))
		return $(($1 + $2))
	fi
}
