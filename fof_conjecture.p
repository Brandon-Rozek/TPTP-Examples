include('Axioms/NUM-ROZEK.ax').

%-- Define Even
fof(h1, hypothesis, even("zero")).
fof(h2, hypothesis,
    ![X] : (even(X) => even(add(X, "two")))
).

%-- Problem
fof(c1, conjecture,
    ![X] : (even(X) => even(add(X, "four")))
).
