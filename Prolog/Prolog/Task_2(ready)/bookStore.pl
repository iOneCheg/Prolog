book(idiot,29,600).
book(vedmak,46,720).
book(revizor,53,670).
book(duna,43,570).
book(besy,76,450).
book(na_dne,49,390).
book(siyanie,42,740).
book(gamlet,46,610).

:-write('����� ���� ����������: printAll'),nl.
:-write('����� ����� �� ��������: findByName'),nl.
:-write('����� �� ��������� ����: findByPrice'),nl.

printAll():-
    format(user_output,'NameBook~10|Count~20|Price~n',[]),nl,
    forall(book(N,D,P),format(user_output,'~a~20|~a~30|~a~n', [N,D,P])).

findByName:-
    write('��������:'),read(FindName),nl,
    book(Name,Count,Price),FindName=Name,
    write('���������� �����������:'),write(Count),
    write(' ����:'),write(Price),nl,fail.

findByPrice:-
    write('��������� ����:'),read(StartPrice),nl,
    write('�������� ����:'),read(EndPrice),nl,
    book(Name,Count,Price),Price>=StartPrice,Price=<EndPrice,
    write('��������:'),write(Name),
    write(' ���������� �����������:'),write(Count),
    write(' ����:'),write(Price),nl,fail.

writeBooks:-
    open('final.txt',write,Out),
    format(Out,'NameBook~10|Count~20|Price~n',[]),nl,
    forall(book(N,D,P),format(Out,'~a~10|~a~20|~a~n', [N,D,P])),
    close(Out).



