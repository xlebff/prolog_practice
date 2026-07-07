% результат сложения списков

concat([], L, L).
concat([H|T_L1], L2, [H|R]) :-
    concat(T_L1, L2, R).