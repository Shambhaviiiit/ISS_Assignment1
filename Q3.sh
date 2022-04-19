#!/bin/bash

echo $(stat -c%s "text.txt")  

echo $(wc -l < text.txt)

echo $(wc -w < text.txt)

awk '{print "Line No:", NR, "-", NF}' text.txt

#grep -w -c text.txt

#grep -wo '[[:alnum:]]\+' text.txt | sort | uniq -c

sed -e 's/[^[:alpha:]]/ /g' quotes.txt | tr '\n' " " |  tr -s " " | tr " " '\n'| tr 'A-Z' 'a-z' |
sort | uniq -c | sort -nr |while read count name
do
        if [ ${count} -gt 1 ]
        then
                echo "word:${name} - Count of repetition:${count}"
        fi
done
