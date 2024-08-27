#! /bin/bash
for i in {1..10}
do
echo "Number is $i"
done



#!/bin/bash  
learn="Start learning from Javatpoint."  
  echo
for learn in $learn  
do  
echo $learn  
done  
echo "Thank You."  


#!/bin/bash 
x=`ls`
for i in $x
do
    echo file name is: $i
    cat $i
done
