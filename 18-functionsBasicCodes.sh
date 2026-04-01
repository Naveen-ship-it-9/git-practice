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

#print two numbers

# add()
# {
#     echo "print Two number is:$1 and $2"

# }

# read a
# read b

# add $a $b

# add()
# {
#     echo "print adding of two numbers is:$1 $2"
# }
# read a
# read b
# #add ' $a + $b '
# #add $(( a + b ))

# #if use like this add ($a + $b) or $(a + b) not work bcz syntax error

# #add $(( $a - $b ))

# add $(( $a + $b ))

add()
{
    echo "print adding of two numbers is:$1"
}
read a
read b
sum=$((a + b ))

add $sum