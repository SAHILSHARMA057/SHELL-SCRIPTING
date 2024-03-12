#!/bin/bash

# Define the eligibility check function
check_eligibility() {
    local age=$1

    # Check eligibility criteria
    if [ "$age" -ge 18 ]; then
        # Additional checks for specific regions, if required
        return 0
    else
        return 1
    fi
}

# Main function
main() {
    # Check if the correct number of arguments are provided
    if [ "$#" -ne 3 ]; then
        echo "Usage: $0 <name> <age> <location>"
        exit 1
    fi

    # Retrieve voter data from command line arguments
    name=$1
    age=$2
    location=$3

    # Check if the voter is eligible
    if check_eligibility "$age"; then
        echo "You are eligible to vote. Thank you for participating in e-voting!"
    else
        echo "You are not eligible to vote."
    fi
}

# Call the main function with command line arguments
main "$@"
