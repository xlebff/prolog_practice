last([L], L).
last([_|T], R) :- last(T, R).