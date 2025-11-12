#! /bin/bash

cnt()
{
    words=$(cat /usr/share/dict/words | grep '^c')
    for n in $words; do
        num=$(echo $n | wc -c)
        if [ $num -ge 20 ]; then
            echo "$n $num"
        fi
    done
}

cnt