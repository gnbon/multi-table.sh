#!/bin/bash

# 입력 파라미터의 개수 확인
if [ "$#" -ne 2 ]; then
    echo "You need to input two parameters: number of rows and number of columns"
    exit 1
fi

# 입력 파라미터가 정수인지 확인
re='^[0-9]+$'
if ! [[ $1 =~ $re ]] || ! [[ $2 =~ $re ]]; then
    echo "Both input parameters should be positive integers."
    exit 1
fi


# 파라미터가 양수인지 확인
if [ "$1" -le 0 ] || [ "$2" -le 0 ]; then
    echo "Both input parameters should be positive integers."
    exit 1
fi


rows=$1
columns=$2

# 곱셈 테이블 출력
for (( i=1; i<=rows; i++ ))
do
    for (( j=1; j<=columns; j++ ))
    do
        printf "%d*%d=%-3d " $((i)) $((j)) $((i*j))
    done
    echo ""
done
