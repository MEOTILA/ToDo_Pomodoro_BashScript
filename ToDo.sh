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
    echo "2. Change task status"
    echo "3. Show your tasks"
    echo "4. Remove a todo task"
    echo "5. Remove a done task"
    echo "6. Search a task"
    echo "7. Exit"
    echo -n "Choose: "
}

add_task() {
    echo -n "Enter your task text: "
    read task
    echo "$task" >> $TODO_FILE
    echo "Task has been added!"
}

change_status() {
    echo "NotDone Tasks:"
    cat -n $TODO_FILE
    echo ""

    echo -n "Enter the Task No. to mark as done: "
    read task_num

    sed -i "${task_num}d" $TODO_FILE

    echo "$task" >> $DONE_FILE

    echo "Task has been marked as done!"
}

show_tasks() {
    echo "NotDone Tasks:"
    cat -n $TODO_FILE
    echo ""
    echo "Done Tasks:"
    cat -n $DONE_FILE
}

delete_todo_task() {
    echo "NotDone Tasks:"
    cat -n $TODO_FILE
    echo -n "Enter your Task No. to remove: "
    read task_num
    sed -i "${task_num}d" $TODO_FILE
    echo "Task has been deleted."
}

delete_done_task() {
    echo "Done Tasks:"
    cat -n $DONE_FILE
    echo -n "Enter your Task No. to remove: "
    read task_num
    sed -i "${task_num}d" $DONE_FILE
    echo "Task has been deleted from Done tasks."
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
        2) change_status ;;
        3) show_tasks ;;
        4) delete_todo_task ;;
        5) delete_done_task;;
        6) search_tasks ;;
        7) echo "Exit."; break ;;
        *) echo "Not valid! Please try again." ;;
    esac
    echo ""
done
