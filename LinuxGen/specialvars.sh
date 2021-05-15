#!/bin/bash
# special.sh
echo "Filename = $0"
echo "Process ID of shell = $$"
echo "Last Process ID of shell = $!"
echo "Program name = $0"
echo "Number of args = $#"
echo "Argument 1 = $1"
echo "Argument 2 = $2"
echo "Complete list of arguments = $*"
echo "Complete list of args individually quoted = $@"
echo "Exit status = $?"
echo "Previous command arg = $_"
