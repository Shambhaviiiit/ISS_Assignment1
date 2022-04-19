#!/bin/bash

file="quotes.txt"
touch speech.txt

while IFS= read -r line
do
a=`cut -d "~" -f2- <<< "$line"`
b=`echo $line | cut -d "~" -f1`

if [ -z "$line" ]
then
continue
else
echo "$a once said,\"" $b"\""
fi

done < "$file" > speech.txt
