my_member(X, [X|T]) :-
	!,
	true.
	
my_member(X, [H|T]) :-
	member(X, T).