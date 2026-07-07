max_list([X], X).
max_list([H|T], R) :-
    max_list(T, X),	
	( H > R -> R = H ; R = X).