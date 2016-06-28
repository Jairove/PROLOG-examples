enlace(a,b).
enlace(b,c).
enlace(c,d).
enlace(a,e).
enlace(e.f).
enlace(f,g).
camino(X,Y):-enlace(X,Y).
camino(X,Y):-enlace(X,Z),camino(Z,Y).