encima_de(bombilla,coche).
encima_de(coche,tortuga).
derecha_de(llave,tortuga).
derecha_de(semaforo,llave).
encima_de(taza,semaforo).
encima_de(lupa,taza).
derecha_de(martillo,semaforo).
encima_de(bascula,martillo).
derecha(X,Y) :- derecha_de(X,Y).
derecha(X,Y) :- derecha_de(X,Z),derecha(Z,Y).
encima(X,Y) :- encima_de(X,Y).
encima(X,Y) :- encima_de(X,Z),derecha(Z,Y).