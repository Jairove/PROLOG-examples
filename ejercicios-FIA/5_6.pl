gusta(X,Y):-madre(X,Y),bueno(Y).
madre(X,Y).
mujer(X):-madre(X,Y).
mujer(ana).
bueno(maridoana).