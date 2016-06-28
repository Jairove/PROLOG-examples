/* horoscopo(Signo,DiaIni,MesIni,DiaFin,MesFin) <-
 pertenecen al signo del horoscopo Signo los nacidos
 entre el DiaIni del MesIni y el DiaFin del MesFin */
horoscopo(aries,21,3,21,4).
horoscopo(tauro,21,4,21,5).
horoscopo(geminis,21,5,21,6).
horoscopo(cancer,21,6,21,7).
horoscopo(leo,21,7,21,8).
horoscopo(virgo,21,8,21,9).
horoscopo(libra,21,9,21,10).
horoscopo(escorpio,21,10,21,11).
horoscopo(sagitario,21,11,21,12).
horoscopo(capricornio,21,12,21,1).
horoscopo(acuario,21,1,21,2).
horoscopo(piscis,21,2,21,3).
/* signo(Dia,Mes,Signo) <- los nacidos el Dia de Mes pertenecen al
 signo del zodiaco Signo */
signo(Dia,Mes,Signo) :- horoscopo(Signo,D1,M1,D2,M2),
 ( ( Mes=M1, Dia>=D1) ; ( Mes=M2, Dia=<D2) ). 