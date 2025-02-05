#!/bin/bash
read -p "Rock, paper or scissors: " RPS

CPU_MOVE=$(( ( RANDOM % 3 )  + 1 ))
CPU_CHOICE="none"

# CPU choosing a random sign
if [ $CPU_MOVE -eq 1 ]; then
    CPU_CHOICE="rock"
elif [ $CPU_MOVE -eq 2 ]; then
    CPU_CHOICE="paper"
elif [ $CPU_MOVE -eq 3 ]; then
    CPU_CHOICE="scissors"
else
    echo "There is a bug in the code at CPU_CHOICE."
fi

echo "Computer chose: $CPU_CHOICE"

# Who wins?
if [ "$CPU_CHOICE" = "$RPS" ]; then
    echo "It's a tie!"
elif [ "$CPU_CHOICE" = "rock" ] && [ "$RPS" = "paper" ]; then
    echo "You win!"
elif [ "$CPU_CHOICE" = "rock" ] && [ "$RPS" = "scissors" ]; then
    echo "CPU wins!"
elif [ "$CPU_CHOICE" = "paper" ] && [ "$RPS" = "rock" ]; then
    echo "CPU wins!"
elif [ "$CPU_CHOICE" = "paper" ] && [ "$RPS" = "scissors" ]; then
    echo "You win!"
elif [ "$CPU_CHOICE" = "scissors" ] && [ "$RPS" = "rock" ]; then
    echo "You win!"
elif [ "$CPU_CHOICE" = "scissors" ] && [ "$RPS" = "paper" ]; then
    echo "CPU wins!"
else
    echo "Invalid input! Please choose rock, paper, or scissors."
fi