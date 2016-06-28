f(0,0):-!.
f(1,1):-!.
f(N,X):- N>0, 
	N1 is N-1, 
	N2 is N-2,
	f(N1,X1), 
	f(N2,X2),
	X is 3*X1 + 2*X2.
