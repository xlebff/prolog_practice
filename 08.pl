my_member(X, [X|_]) :-
    !, true.
my_member(X, [_|T]) :-
    my_member(X, T).

remove_duplicates([], []).
remove_duplicates([H|T], R) :-
    ( my_member(H, T)
      -> remove_duplicates(T, R)
      ;  remove_duplicates(T, NewR),
         R = [H|NewR]
    ).