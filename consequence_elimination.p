include('Axioms/NUM-ROZEK.ax').

fof(c2, claim,
    ![X] : (successor(X) != "zero")
).

fof(c3, claim, "two" = sucessor(successor("zero"))).

fof(c4, claim,
    ![A, B]: (
        (successor(successor(A)) = successor(B)) =>
        (successor(A) = B)
    )
).

fof(c5, claim,
    "zero" = add("zero", "zero")
).
