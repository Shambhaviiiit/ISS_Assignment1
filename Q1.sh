#!/bin/bash

sed '/^$/d' quotes.txt
awk '!a[$0]++' quotes.txt
