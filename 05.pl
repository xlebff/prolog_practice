remove_all(_, [], []).

remove_all(X, [X|L_T], R) :-
    !,
    remove_all(X, L_T, R).

remove_all(X, [H_L|T_L], [H_L|R]) :-
    remove_all(X, T_L, R).