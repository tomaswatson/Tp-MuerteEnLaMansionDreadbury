viveEnLaMansion(tiaAgatha).
viveEnLaMansion(mayordomo).
viveEnLaMansion(charles).

odiaA(tiaAgatha,Odiada) :-
    viveEnLaMansion(Odiada),
    Odiada \= mayordomo.

odiaA(charles,Odiada) :-
    viveEnLaMansion(Odiada),
    not(odiaA(tiaAgatha,Odiada)).

odiaA(mayordomo,Odiada) :-
    odiaA(tiaAgatha,Odiada).

esMasRicoQue(Persona,tiaAgatha) :-
    viveEnLaMansion(Persona),
    not(odiaA(mayordomo,Persona)).

mataA(Asesino,Victima) :-
    odiaA(Asesino,Victima),
    viveEnLaMansion(Asesino),
    not(esMasRicoQue(Asesino,Victima)).

/*
1.
?- mataA(Asesino,tiaAgatha).
Asesino = tiaAgatha ;
false.

2.
?- odiaA(_,milhouse).
false.

?- odiaA(charles,Odiada).
Odiada = mayordomo.

?- odiaA(Odiador,tiaAgatha).
Odiador = tiaAgatha ;
Odiador = mayordomo.

?- odiaA(Odiador,Odiada).
Odiador = Odiada, Odiada = tiaAgatha ;
Odiador = tiaAgatha,
Odiada = charles ;
Odiador = charles,
Odiada = mayordomo ;
Odiador = mayordomo,
Odiada = tiaAgatha ;
Odiador = mayordomo,
Odiada = charles.

?- odiaA(mayordomo,_).
true.
*/
