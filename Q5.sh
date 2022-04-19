#!/bin/bash

read line
echo ${line[@]} | rev

new_line=$(echo "$line" | tr "0-9a-z" "1-9a-z_" | rev)

echo ${new_line[@]}

c=${#line}
d=$((c/2))

#echo "$d $c"
read a < <(expr "${line:$1:$d}" | rev) 
read b < <(expr "${line:$d:$d}")
#echo "$rev_string ${line:$d:$d}"

echo ${a[@]}$b
