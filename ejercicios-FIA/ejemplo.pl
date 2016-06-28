gusta(ana,X) :- juguete(X),juega(ana,X). /* es una clausula regla */
juguete(barbie).  /* es una clausula hecho */
juguete(quasimodo).
juega(ana,barbie).
juega(ana,quasimodo).
gusta(susana,Y) :- gusta(ana,Y).