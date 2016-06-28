gusta(X,juan) :- comida(X).
comida(manzanas).
comida(pollo).
comida(X) :- no_mata(X).
no_mata(X) :- come(Y,X),vivo(Y).
come(guillermo,cacahuetes).
vivo(guillermo).
come(susana,X):-come(guillermo,X).
/* gusta(cacahuetes,juan) */

