#!/bin/bash

# Declaring variable in bash is  as easy as python

myage="20"
# myname = "Guru Vyas\" you can not write the name as this cause then the kernel will see this as a command and not a var the var should stricly
# follow  varname="varval\" 
# If not taken care of it can give error like ./vars.sh: line No. : Guru Vyas: command not found
# I'm using \ to tell bash don\'t count this as a string 
myname="Guru Vyas"

echo "Hello my name is $myage"
echo "My name is $myname"

#You can use the var to store the output of any command as following:

now=$(date)

echo "Current time is $now"

#There are many Default Variables in your system which are already written and you can directly use them like:

echo "My other name is $USER"
# All the default variables are written in full caps
# To ignore the confusion in bash scripting we should always write our vars in small letters and never use caps, so if someone sees your script
# and sees that a var is in all caps they can understand that you are referencing an env var and not a var that you made.

# To find all the enviroment variables you can use command `env` to check them 
