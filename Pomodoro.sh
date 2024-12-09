#!/bin/bash

echo -n "Enter the number of work sessions: "
read work_number

for (( i=1; i<=work_number; i++ ))
do
    echo "Session $i: Start deep work for 10 seconds..."
    for ((j=1; j<=10; j++))
    do
      echo "Second" $j
      sleep 1
      done


    if (( $i>=4  ))
    then
        echo "Time for a long break of 5 seconds!"
        for ((k=1; k<=5; k++))
            do
              echo "Second" $k
              sleep 1
              done
    else
        echo "Time for a short break of 3 seconds!"
        for ((n=1; n<=3; n++))
            do
              echo "Second" $n
              sleep 1
              done
    fi
done

echo "Pomodoro is finished!"
