#!/bin/sh

# Question Answering using Vampire

show_usage() {
    echo "Usage: vampire_qa [problem_file]"
    exit 1
}

# Check argument count
if [ "$#" -ne 1 ]; then
    show_usage
fi

# Note: Disables avatar mode (av) which uses a Z3 solver.

vampire -av off -qa answer_literal "$1"
