include('Axioms/NUM-ROZEK.ax').

fof(previous_answers, hypothesis,
    ![X, Y]: (previous(X, Y) <=>
    (
        (X = "three" & Y = "zero") |
        (X = "zero" & Y = "three")
    )
)).

fof(goal, question,
    ?[X, Y]: (
        (add(X, Y) = "three") &
        ~previous(X, Y)
    )
).
