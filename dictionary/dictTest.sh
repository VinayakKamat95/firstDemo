#!/bin/bash -x

declare -A sounds
sounds[dog]="bark"
sounds[cow]="moo"
sounds[bird]="tweet"
sounds[wolf]="howl"

echo "All Animal sounds :: " ${sounds[@]}
echo "Dog sound :: " ${sounds[dog]}
echo "All Animal :: " ${!sounds[*]}
echo "Number of animals :: " ${#sounds[@]}
unset sounds[wolf]
echo "after deleting wolf ::" ${sounds[@]}
