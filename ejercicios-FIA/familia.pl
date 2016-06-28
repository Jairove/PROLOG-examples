familia(persona(juan,perez,5000),
persona(maria,alonso,10000),
[persona(carlos,perez,0),
persona(andres,perez,0),
persona(elena,perez,200)]).

familia(persona(pedro,lopez,25000),
persona(carmen,ruiz,15000),
[persona(carlos,lopez,1000),
persona(teresa,lopez,0)]).

sueldo(persona(_,_,S),S).

total([],0).
total([Persona|Familiares],Ingresos):- sueldo(Persona,Sueldo),total(Familiares,Aux),Ingresos is Aux+Sueldo.