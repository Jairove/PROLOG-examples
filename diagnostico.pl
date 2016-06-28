% Jairo Velasco Martin
% Base de conocimiento del asistente al diagnostico:

:-op(40, xfy, &).
:-op(50, xfy, --->).

light(L)&
ok(L)&
live(L)
---> lit(L).

connected_to(W,W1)&
live(W1)
---> live(W).

true ---> live(outside).
true ---> down(s1).
true ---> up(s2).
true ---> up(s3).
true ---> ok(_).
true ---> light(l1).
true ---> light(l2).
true ---> connected_to(l1,w0).
up(s2) & ok(s2) ---> connected_to(w0,w1).
down(s2) & ok(s2) ---> connected_to(w0,w2).
up(s1) & ok(s1) ---> connected_to(w1,w3).
down(s1) & ok(s1) ---> connected_to(w2,w3).
up(s3) & ok(s3) ---> connected_to(w4,w3).
true ---> connected_to(p1,w3).
true ---> connected_to(p2,w6).
ok(cb1) ---> connected_to(w3,w5).
ok(cb2) ---> connected_to(w6,w5).
true ---> connected_to(w5,outside).

solve(true) :-!.
solve((A & B)) :-!, solve(A), solve(B).
solve(A) :-!, clause((B ---> A),Body), solve(B).
