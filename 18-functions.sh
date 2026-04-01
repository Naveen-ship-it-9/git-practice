#!/bin/bash
# #basic program in functions
# NAME()      #define function with Name
# {
#     echo "Hello Naveen"
# }

# NAME   #calling the function

#Printing number

# add()
# {
#     echo "Printing number is: $1"
# }

# add 2

#printing number with read 

# add()
# {
#     echo "print number is:$add"

# }
# read add

# add

# or

# add()
# {
#     echo "print nuber is:$1"
# }
# read add
# add $add

#adding the sumbers

add()
{
    echo "print adding number is:$1 $2"

}

read a
read b

add ($(a + b))
