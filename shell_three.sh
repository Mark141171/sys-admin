#!/bin/bash

# In the below scipt I did not need the last elif - The same result could have been acheived with an else echo $anyone
# But I wanted to figure out how to use the != and && conditions with bash. 

NAME=$1
greeting="Hi Steve"
anyone="Welcome and hello"
hat_tip="*Tip of the hat*"

if [ "$NAME" = "Dave" ]; then
    echo "Hi Dave!"
elif [ "$NAME" = "Steve" ] ; then
    echo $hat_tip
elif [ "$NAME" != "Dave" ] && [ "$NAME" != "Steve" ]; then
    echo $anyone
fi
