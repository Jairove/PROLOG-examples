longitud([],0).
longitud([_|Resto],N):-
longitud(Resto,N1),
N is N1+1.