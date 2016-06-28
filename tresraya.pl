% Juego de tres en raya que busca amenazas y determina jugadas forzosas.
% Se supone que juegan las caras.
% Jairo Velasco Martin
% Octubre de 2015

linea([1,2,3]).
linea([4,5,6]).
linea([7,8,9]).
linea([1,4,7]).
linea([2,5,8]).
linea([3,6,9]).
linea([1,5,9]).
linea([3,5,7]).

amenaza_linea([X,Y,Z],Tablero,X):-
	vacio(Tablero,X),
	cruz(Tablero,Y),
	cruz(Tablero,Z).

amenaza_linea([X,Y,Z],Tablero,Y):-
	cruz(Tablero,X),
	vacio(Tablero,Y),
	cruz(Tablero,Z).

amenaza_linea([X,Y,Z],Tablero,Z):-
	cruz(Tablero,X),
	cruz(Tablero,Y),
	vacio(Tablero,Z).

% La cruz se representa mediante x
cruz([Cabeza|_],1):-!,Cabeza=x.
cruz([Cabeza|Cola],X) :- X1 is X - 1, cruz(Cola,X1).


% El vacio se representa mediante ""
vacio([Cabeza|_],1):-!,Cabeza="".
vacio([Cabeza|Cola],X) :- X1 is X - 1, vacio(Cola,X1).

movimiento_forzoso(Tablero, Casilla) :- 
	linea(Linea), 
	amenaza_linea(Linea, Tablero, Casilla),
	!. 