#!/bin/bash

exit_script() {
    echo "Received signal: $1"
    echo "Going to kill a process"
    trap - SIGHUP SIGINT SIGTERM # clear the trap
    # Do stuff to clean up
}

trap exit_script SIGHUP SIGINT SIGTERM

echo "running the job! PID: $$"
while true; do sleep 1; echo "test"; done

echo "Done"
