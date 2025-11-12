#! /bin/bash

file_wordcnt()
{
    words=$(cat $1 | wc -w)
    echo "$1 파일의 단어는 $words 개입니다."
}
read -p "Enter a file name: " FILE
file_wordcnt $FILE