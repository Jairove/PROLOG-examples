builtin(A is B).
builtin(A = B).
builtin(A >= B).
builtin(read(X)). 
builtin(write(X)).
builtin(A > B). 
builtin(A < B). 
builtin(A =:= B). 
builtin(A =< B).
builtin(functor(T, F, N)).

solve(true,true) :- !.	

solve((A, B), (ProofA, ProofB)) :-
	!, 
	solve(A, ProofA),
	solve(B, ProofB). 

solve(A, (A:-builtin)):- 
	builtin(A), 
	!, 
	A.

 solve(A, (A:-Proof)) :- 
	clause(A, B), 
	solve(B, Proof).