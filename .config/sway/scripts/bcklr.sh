#!/bin/bash
char=$1
dir="/sys/class/backlight/amdgpu_bl1/brightness" 
delta=20
val=$(cat $dir)

if  [ $char = "-d" ] 
   then
      val=$(( $val - $delta ))
elif [ $char = "-r" ]
   then 
      val=$(( $val + $delta ))
fi

echo $val > $dir 
