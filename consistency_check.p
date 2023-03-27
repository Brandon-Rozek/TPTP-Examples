fof(lt_irreflex, axiom,
    ![X] : (~lt(X, X))
).

fof(lt_assym, axiom,
    ![X, Y] : (lt(X, Y) <=> ~lt(Y, X))
).

fof(prove, conjecture, $false).
