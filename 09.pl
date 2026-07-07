sum_list([], 0).
sum_list([H|T], R) :-
    sum_list(T, NewR),
    R is H + NewR.


new_sum_list(L, R) :- sum_acc(L, 0, R).

sum_acc([], A, A).
sum_acc([H|T], A, R) :-
    NewA is A + H,
    sum_acc(T, NewA, R).