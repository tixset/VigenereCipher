#!/bin/bash
# функция не работает, похоже ошибка в функции "chr" / the function does not work, it looks like an error in the "chr" function
ord() {
    printf '%d' "'$1"
}
chr() {
    printf "\\$(printf '%03o' "$1")"
}
code() {
    [ ${#2} = 0 ]&&exit 1
    [ $3 = "true" ]&&sign=-1||sign=1
    result=""
    for ((i=0; i < ${#1}; i++))
    do
        char=$(chr $(( $(ord ${1:$i:1} ) + $(($sign * $(ord ${2: $(($i % ${#2})) :1} ) )) )) )
        result+="${char}"
    done
    echo $result
}
