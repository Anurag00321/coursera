#!/bin/bash

# Simple Interest Calculator

# Function to calculate simple interest
calculate_simple_interest() {
    local principal=$1
    local rate=$2
    local time=$3
    echo "scale=2; ($principal * $rate * $time) / 100" | bc
}

# Check if the correct number of arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Assign arguments to variables
principal=$1
rate=$2
time=$3

# Calculate simple interest
simple_interest=$(calculate_simple_interest $principal $rate $time)

# Output the result
echo "The simple interest for a principal of $principal, rate of $rate%, and time of $time years is: $simple_interest"
