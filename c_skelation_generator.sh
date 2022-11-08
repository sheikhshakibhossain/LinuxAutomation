#!/bin/bash

# Color Variable
COLOR_END='\e[0m'
COLOR_YELLOW='\e[1;33m'
COLOR_RED_B='\e[1;31m'

if [[ -f "$1.c" ]];
then
gcc $1.c -o $1;

echo -e "$COLOR_YELLOW

    '$1' program successfully Compiled ...

$COLOR_END";

read -p "	Exit[e/E] || Run[Any key] : " REPLY;
if [[ "$REPLY" == "e" || "$REPLY" == "E" ]];
then
	exit
else
	echo -e "$COLOR_RED_B
	
	Running $1 program ...
	
	$COLOR_END";
	./$1
fi;
exit

else
touch $1.c;
echo "#include <stdio.h>

int main()
{
	printf();

	return 0;
}
" > $1.c;


vi $1.c;
gcc $1.c -o $1;

echo -e "$COLOR_YELLOW

	'$1' program successfully Compiled ...

$COLOR_END";

read -p "	Exit[e/E] || Run[Any key] : " REPLY;
if [[ "$REPLY" == "e" || "$REPLY" == "E" ]];
then
	exit
else
	echo -e "$COLOR_RED_B
	
	Running $1 program ...
	
	$COLOR_END";
	./$1
fi;
fi;
exit
