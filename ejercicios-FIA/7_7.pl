transporte(roma,200).
transporte(londres,250).
transporte(tunez,150).

alojamiento(hotel,roma,250).
alojamiento(hotel,londres,150).
alojamiento(hotel,tunez,100).
alojamiento(hostal,roma,150).
alojamiento(hostal,londres,100).
alojamiento(hostal,tunez,80).
alojamiento(camping,roma,100).
alojamiento(camping,londres,50).
alojamiento(camping,tunez,50).

viaje(Ciudad,Alojamiento,Noches,Precio):-transporte(Ciudad,P1),alojamiento(Alojamiento,Ciudad,P2),Precio is P2*Noches+P1.

