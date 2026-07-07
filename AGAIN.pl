% считает сумму всех чисел в списке.

sum_list([], 0).
sum_list([H|T], R) :-
    sum_list(T, NewR),
    R is H + NewR.


% считает длину списка.

list_length([], 0).
list_length([H|T], R) :-
    list_length(T, NewR),
    R is NewR + 1.


% проверяет, есть ли элемент в списке.

member_check(X, [X|_]) :-
    !, true.
member_check(X, [_|T]) :-
    member_check(X, T).


% находит последний элемент списка.

last_element([L], L) :- !.
last_element([H|T], R) :-
    last_element(T, R).


% удваивает каждый элемент списка (числа).

double_list([], []).
double_list([H_L|T_L], [H_R|T_R]) :-
    H_R is H_L * 2,
    double_list(T_L, T_R).


% удаляет все дубликаты, оставляя только первое вхождение.

remove_duplicates([], []).
remove_duplicates([H|T], R) :-
    (
        member_check(H, T)
        -> remove_duplicates(T, R)
        ;  remove_duplicates(T, NewR),
           R = [H|NewR]
    ).


% оставляет только чётные числа.

even_numbers([], []).
even_numbers([H|T], R) :-
    (
        0 is H mod 2
        -> even_numbers(T, NewR),
           R = [H|NewR]
        ;  even_numbers(T, R)
    ).


% сложение списков

concat_lists([], L2, L2).
concat_lists([H|T], L2, R) :-
    concat_lists(T, L2, [H|R]).