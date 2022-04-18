sum_List([],0).

sum_List([H|T],Sum):-
    sum_List(T,NewSum),
    Sum is H + NewSum.

max(X,Y,Max):-
    X < Y,
    Max = Y.

max(X,Y,Max):-
    X > Y,
    Max = X.

max_List([Max],Max).

max_List([H|T],Max):-
    max_List(T,M),
    max(H,M,Max).

not_even_List([],[]).
not_even_List([H],[H]).
not_even_List([H1,_|T1], [H1|T2]):-
    not_even_List(T1,T2).

func_Main():-
    write('Для начала работы функции введите 2 списка ОДИНАКОВОЙ ДЛИНЫ'),nl,
    write('Длина обоих списков:'),read(Length),
    write('Введите список X:'),nl,readList(Lx,Length),
    write('Введите список Y:'),nl,readList(Ly,Length),
    write('Список X:'),write(Lx),nl,
    write('Список Y:'),write(Ly),nl,
    write('Введите число, на которое нужно умножить элементы списка X:'),
    read(C),
    mult_list(Lx,C,NewLx),
    write('Введите число, которое нужно сложить с каждым элементом списка Y:'),
    read(D),
    sum_list(Ly,D,NewLy),
    write('Новый список X:'),write(NewLx),nl,
    write('Новый список Y:'),write(NewLy),nl,
    reverse(NewLx,RevLx),reverse(NewLy,RevLy),
    write('Инвертированный список X:'),write(RevLx),nl,
    write('Инвертированный список Y:'),write(RevLy),nl,
    merge(RevLx,RevLy,ResMergeL),
    write('Слитый список:'),write(ResMergeL),nl,
    oddelem(ResMergeL,ResOddL),
    write('Список из нечётных элементов:'),write(ResOddL),nl,
    max_List(ResOddL,MaxElem),
    write('Максимальный элемент в итоговом списке:'),write(MaxElem).



readList([], N):-
  N =< 0, !.

readList([H|T], N):-
  read(H), !,
  NN = N - 1,
  readList(T, NN).

mult_list([],_,[]).
mult_list([H|T],N,[Z|Q]) :- Z is H*N, mult_list(T,N,Q).

sum_list([],_,[]).
sum_list([H|T],N,[Z|Q]) :- Z is H+N, sum_list(T,N,Q).

reverse(Xs, Ys) :-
  reverse(Xs, [], Ys, Ys).

reverse([], Ys, Ys, []).

reverse([X|Xs], Rs, Ys, [_|Bound]) :-
  reverse(Xs, [X|Rs], Ys, Bound).

join_2_lists_([], [], []).
join_2_lists_([H1|T1], [H2|T2], [[H1, H2]|JoinLst]) :-
    join_2_lists_(T1, T2, JoinLst).

merge(List1,List2,Result):-
    join_2_lists_(List1,List2,Res),
    append(Res,Result).

is_odd(X):-
    1 is X mod 2.

oddelem(List,Res):-
    include(is_odd,List,Res).
