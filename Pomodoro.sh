#!/bin/bash

echo -n "Enter the number of work sessions: "
read work_number

for (( i=1; i<=work_number; i++ ))
do
    echo "Session $i: Start deep work for 10 seconds..."
    sleep 10

    if (( $i>=4  ))
    then
        echo "Time for a long break of 5 seconds!"
        sleep 5
    else
        echo "Time for a short break of 3 seconds!"
        sleep 3
    fi
done

echo "Pomodoro is finished!"
