#!/bin/bash 

PSQL="psql --username=freecodecamp --dbname=periodic_table -t --no-align -c"

if [ $# -eq 0 ]; then
    echo "Please provide an element as an argument."
    exit 0
fi

argument="$1"


atomic_number=$($PSQL "SELECT atomic_number FROM elements WHERE atomic_number = $(($argument)) OR symbol = '$argument' OR name = '$argument'")

if [[ -z $atomic_number ]]
then
    echo "I could not find that element in the database."
    exit 0
else
    element_name=$($PSQL "SELECT name FROM elements WHERE $atomic_number = atomic_number")
    element_symbol=$($PSQL "SELECT symbol FROM elements WHERE $atomic_number = atomic_number")
    element_mass=$($PSQL "SELECT atomic_mass FROM properties WHERE $atomic_number = atomic_number")
    element_melting_point=$($PSQL "SELECT melting_point_celsius FROM properties WHERE $atomic_number = atomic_number")
    element_boiling_point=$($PSQL "SELECT boiling_point_celsius FROM properties WHERE $atomic_number = atomic_number")

    element_type=$($PSQL "SELECT t.type FROM properties p JOIN types t ON p.type_id = t.type_id WHERE p.atomic_number = $atomic_number")

    echo "The element with atomic number $atomic_number is $element_name ($element_symbol). It's a $element_type, with a mass of $element_mass amu. $element_name has a melting point of $element_melting_point celsius and a boiling point of $element_boiling_point celsius."
    exit 0
fi

