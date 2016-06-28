feliz(X):-aprueba(X,ia),loteria(X).
aprueba(X,Y):-estudioso(X).
aprueba(X,Y):-afortunado(X).
estudioso(pedro).
afortunado(juan).
loteria(X):-afortunado(X).
/* ?- feliz(juan) */