include('Axioms/LIST-ROZEK.ax').

% Definition
tff(gezero_t, type, gezero: list > $o).

tff(gezero, axiom,
    ![L: list]: (gezero(L) <=> $greatereq(length(L), 0))
).

% Induction Axiom

tff(gezero_induction, axiom,
    (gezero(nil) &
    ![H: $int, T: list]: (
        gezero(T) => gezero(cons(H, T))
    ))
    =>
    ![L: list]: (
        gezero(L)
    )
).

% Problem

tff(goal, conjecture,
    ![L: list]: gezero(L)
).
