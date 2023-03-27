#!/bin/sh

# ProofGraph Output via E Prover

show_usage() {
    echo "Usage: e_graph [problem_file]"
    exit 1
}

# Check argument count
if [ "$#" -ne 1 ]; then
    show_usage
fi

# Use E Prover to produce a proof graph via GraphViz dot format
eprover --proof-graph=1 -l 0 "$1" > example_proofgraph.dot

# Use GraphVis to create a postscript file from the dot format
dot -Tps example_proofgraph.dot -o proof_graph.ps

# Cleanup
rm e.dot
