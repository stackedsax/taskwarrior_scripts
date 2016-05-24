#/usr/local/bin/bash

TASK_BIN='/usr/local/bin/task'
DEBUG=false

# All this escaping now moot because I added 'description:' to the task done line below

# Escape the special characters + - \ * and '
# Yeah, this is the whole retarded point of doing this in a bash script
ESCAPED_INPUT=`echo "$1" | sed "s/\([\'\+\*\[\]]\)/\\\\\\\\\1/g"`

# For debugging purposes
if [ "$DEBUG" = true ] ; then
	echo "This was what was passed: $1" >> ~/.task/taskwarrior.log 2>&1
	echo "ESCAPED_INPUT: $ESCAPED_INPUT" >> ~/.task/taskwarrior.log 2>&1
fi

# Complete the bastard
echo "all" |  $TASK_BIN description:"$1" done >> ~/.task/taskwarrior.log 2>&1; exit 0
