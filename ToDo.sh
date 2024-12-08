#!/bin/bash

TODO_FILE="todo.txt"
DONE_FILE="done.txt"

if [ ! -f $TODO_FILE ]; then
    touch $TODO_FILE
fi

if [ ! -f $DONE_FILE ]; then
    touch $DONE_FILE
fi

show_menu() {
    echo "ToDo Application"
    echo "1. Add new Task"
    echo "2. Show your tasks"
    echo "3. Remove a task"
    echo "4. Search a task"
    echo "5. Exit"
    echo -n "Choose: "
}

add_task() {
    echo -n "Enter your task text: "
    read task
    echo "$task" >> $TODO_FILE
    echo "Task has been added!"
}

show_tasks() {
    echo "NotDone Tasks:"
    cat -n $TODO_FILE
    echo ""
    echo "Done Tasks:"
    cat -n $DONE_FILE
}

delete_task() {
    echo "NotDone Tasks:"
    cat -n $TODO_FILE
    echo -n "Enter your Task No. to remove: "
    read task_num
    sed -i "${task_num}d" $TODO_FILE
    echo "Task has been deleted."
}

search_tasks() {
    echo -n "Enter your word to search: "
    read query
    echo "Founded search in NotDone tasks:"
    grep -n "$query" $TODO_FILE || echo "Not Found!."
    echo ""
    echo "Founded search in Done tasks:"
    grep -n "$query" $DONE_FILE || echo "Not Found!."
}

while true; do
    show_menu
    read choice
    case $choice in
        1) add_task ;;
        2) show_tasks ;;
        3) delete_task ;;
        4) search_tasks ;;
        5) echo "Exit."; break ;;
        *) echo "Not valid! Please try again." ;;
    esac
    echo ""
done