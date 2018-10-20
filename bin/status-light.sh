#!/usr/bin/env bash

usage="$(basename "$0") [-h] -c <color> -o 

where:
    -h  Show help
    -c  Color in GREEN, RED, BLUE, WHITE, PURPLE, CYAN, YELLOW, ORANGE, RAINBOW, BAVARIA. Animations: RBOW (rainbow), RBC (Rainbow Cycle), TCRB (Theater Chase Rainbow), CW[R|G|B] (Color Wipe red/green/blue) 
    -o  Switch off"

color=

while getopts ':hc:o' option; do
  case "$option" in
    h) echo "$usage"
       exit
       ;;
    c) color=$OPTARG
       ;;
    o) color=OFF
       ;;
    *) echo "$usage" >&2
       exit 1
       ;;
  esac
done
shift $((OPTIND - 1))


if [ -z "$color" ]; then
    echo "$usage" >&2
    exit 1
fi

curl "http://10.2.7.52/?color=`echo $color | tr /a-z/ /A-Z/`" &> /dev/null
