% Jairo Velasco Martin

:-op(40, xfy, &).
:-op(50, xfy, --->).

true ---> valor(w1, 1).
true ---> conectado(w2, w1).
true ---> conectado(w3, w2).
conectado(W,V) & valor(V,X) ---> valor(W,X).

solve(true) :-!.
solve((A & B)) :-!, solve(A), solve(B).
solve(A) :-!, clause((B ---> A),Body), solve(B).

% En caso de querer incluir el operador en las consultas:
% solve((A ---> B)) :-!, clause((A ---> B),Body), solve(A).



