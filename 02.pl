my_member(X, [X|_]) :-
    !, true.
my_member(X, [_|T]) :-
    my_member(X, T).