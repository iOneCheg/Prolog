fib(1,1).
fib(2,1).

fib(N,F):-
    N>0,
    N1 is N-1,fib(N1,F1),
    N2 is N-2, fib(N2,F2),
    F is F1+F2.

mult(X,1,X):-!.

mult(X,Y,Result):-
	YY is Y - 1,
	Result is Result + X,
	mult(X, YY, Result).
