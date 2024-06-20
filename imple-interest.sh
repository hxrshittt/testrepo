#!/bin/bash

# This script calculates simple interest

# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    # Formula for simple interest
    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

    echo "Principal amount: $principal"
    echo "Rate of interest: $rate%"
    echo "Time period: $time years"
    echo "Simple interest: $interest"
}

# Main script starts here

# Input variables
echo "Enter principal amount:"
read principal

echo "Enter rate of interest (as a percentage):"
read rate

echo "Enter time period (in years):"
read time

# Call function to calculate simple interest
calculate_simple_interest $principal $rate $time
