#!/bin/sh

# Consequence Elimination via Vampire

show_usage() {
    echo "Usage: vampire_ce [problem_file]"
    exit 1
}

# Check argument count
if [ "$#" -ne 1 ]; then
    show_usage
fi

# Note: Disables avatar mode (av) which uses a Z3 solver.

vampire -av off --mode consequence_elimination "$1"
