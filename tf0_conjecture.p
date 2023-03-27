include('Axioms/LIST-ROZEK.ax').

% Problem

tff(injective, conjecture,
    ![H1: $int, H2: $int, T1: list, T2: list] : (
        (cons(H1, T1) = cons(H2, T2)) => ((H1 = H2) & (T1 = T2))
    )
).
