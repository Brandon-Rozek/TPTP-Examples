# TPTP Example Files

This repository contains the example files given during my talk on "Automated Theorem Proving with TPTP". In that talk, I demonstrated creating axiom and problem files and showcased how to run them using both the Vampire and E automated theorem provers.

## Axioms

Within `Axioms/NUM-ROZEK.ax` are a few simple axioms describing natural numbers using the successor formalism. It describes both natural number equality and addition.

The file `Axioms/LIST-ROZEK.ax` contains the `cons` representation of a list data structure. It also has a definition of a length of a list.

## Problems

### Conjectures

There are four examples of conjectures in this repository.
- `fof_conjecture.p` : Contains a number theory problem axiomatized by a custom file and represented via non-typed first order formulae.
- `theory_conjecture.p` : Contains a number theory problem axiomatized by the theorem prover's internal theory of integers and reprsented via typed first order formulae.
- `tf0_conjecture.p` : Contains a data structure problem axiomatized by a custom file and represented via typed first order formulae.
- `tf0_induction.p` : Same as `tf0_conjecture.p` but contains an example of induction using a first-order induction axiom.

### Special Modes

*Question-Answering* is as of the time of writing an in-progress specification. Therefore, to activate it within Vampire you'll need to specify extra flags. See `scripts/vampire_qa.sh` for details.

Question-Answering within E does not require special flags but does require the role of the problem to be of type `question` instead of `conjecture`.

Vampire supports *consequence-elimination* which determines which formulas are already deducible from a set of axioms. This requires setup in both the problem file and in the command flags you provide. Within the problem file, you need to set the potential redundant formula's role to `claim` and see `scripts/vampire_ce.sh` for the CLI flags.

Consistency checking is an instance of the standard conjecture problems except you're trying to derive falsity. This is represented as `$false` within TPTP.

## Issues?

For a few of the problems, the default search strategy within Vampire won't be able to find the solution. In those cases, activating competition mode often helps. This mode tries multiple strategies within your time limit.

```bash
vampire --mode casc PROBLEM_FILE.p
```
