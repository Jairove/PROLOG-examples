rubio(marcos).
moreno(juan).
padre(pedro,juan).
padre(marcos,pedro).
padre(juan,ramon).
padre(X,Y):-hijo(Y,X).
abuelo(X,Y):- padre(X,Z), padre(Z,Y).
hijo(marcos,jorge).
/* rubio(X),abuelo(X,Y) */