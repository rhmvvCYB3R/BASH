#!/bin/bash

echo -e "         \e[33mCALCULATOR\e[0m"
echo -e "\n\e[31m[1] - SUMM\n[2] - Minus\n[3] - Multp\n[4] - Divide\e[0m"

read -p $'\n\e[32mEnter option -- \e[0m' operation

read -p $'\n\e[32mPlease enter the first number  --  \e[0m' num1
read -p $'\e[32mPlease enter the second number -- \e[0m' num2

case $operation in
    1)
        result=$((num1 + num2))
        echo -e "\e[33mResult of sum: $result\e[0m"
        ;;
    2)
        result=$((num1 - num2))
        echo -e "\e[33mResult of minus: $result\e[0m"
        ;;
    3)
        result=$((num1 * num2))
        echo -e "\e[33mResult of multiply: $result\e[0m"
        ;;
    4)
        if [ $num2 -ne 0 ]; then
            result=$((num1 / num2))
            echo -e "\e[33mResult of divide: $result\e[0m"
        else
            echo -e "\e[31mERROR: I cannot divide by zero!!\e[0m"
        fi
        ;;
    *)
        echo -e "\e[31mPlease choose a correct option!\e[0m"
        ;;
esac

