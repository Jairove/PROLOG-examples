% Jairo Velasco Martin
% Metainterprete con traza

:-op(40, xfy, &).
:-op(50, xfy, --->).

true ---> valor(w1, 1).
true ---> conectado(w2, w1).
true ---> conectado(w3, w2).
conectado(W,V) & valor(V,X) ---> valor(W,X).

solve_traza(true,C) :-!.
solve_traza((A & B),C) :-!, 
	solve_traza(A,C),
	solve_traza(B,C).
solve_traza(A,C1) :- 
	tab(C1), write(C1), tab(1), write(A), nl,
	C2 is C1+1,
	clause((B ---> A),Body),  
	solve_traza(B,C2).

solve_traza_nivel(A) :- !, 
	solve_traza(A,0).



