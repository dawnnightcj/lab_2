#!/bin/bash
# Authors : Tianchen Wang
# Date: 1/31/19

# Problem 1 code
regex_1='[0-9]\{3\}-[0-9]\{3\}-[0-9]\{4\}'
regex_2='@'
regex_3='[3]\{1\}[0]\{1\}[3]\{1\}-'
regex_4='geocities'
regex_5='[0-9]\{10\}'
#filename="regex_practice.txt"
echo "Enter a Regex:"
read regex
echo "Enter a filename:"
read filename

grep $regex $filename
echo "File name: $filename"
echo "Command Line Arguement: $regex"
grep -c $regex_1 $filename
grep -c $regex_2 $filename
grep $regex_3 $filename > phone_results.txt
grep -Ei $regex_2 $filename | grep -Eiv $regex_4 > email_results.txt
grep $1 $filename > command_results.txt