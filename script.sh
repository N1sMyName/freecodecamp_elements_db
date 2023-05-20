#!/bin/bash
PSQL="psql -X --csv --username=freecodecamp --dbname=periodic_table -c";
cat atomic_mass.txt | while IFS='|' read ID MASS 
do
COUNER=0;
if [[ $COUNTER > 0 ]]
then
echo $MASS
echo $ID
PROPERTY=$($PSQL "update properties set atomic_mass=$MASS where atomic_number=$ID")
echo $PROPERTY
# echo $MASS 
fi
COUNTER=$COUNTER+1
# echo $PROPERTY
done 
