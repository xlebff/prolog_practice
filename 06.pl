concat([], L, L).
concat([H|T_L1], L2, [H|R]) :-
    concat(T_L1, L2, R).

reverse_simple([], []).
reverse_simple([H_L|T_L], R) :-
    reverse_simple(T_L, X),
    concat(X, [H_L], R).

reverse_acc(L, R) :-
    reverse_acc(L, [], R).
reverse_acc([], A, A).
reverse_acc([H_L|T_L], A, R) :-
    reverse_acc(T_L, [H_L|A], R).