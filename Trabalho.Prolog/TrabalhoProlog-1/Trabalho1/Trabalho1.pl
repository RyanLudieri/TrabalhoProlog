%Pais e filhos
pai(tonico, chico).
pai(tonico, parana).
pai(chico, tiao).
pai(parana, paulino).
pai(paulino, jose).
pai(paulino,bruna).
pai(tinoco, marilia).
pai(tinoco, paullo).

%Mães e filhos
mae(maria, chico).
mae(maria, parana).
mae(joana, tiao).
mae(josefina, marilia).
mae(josefina, paullo).
mae(simone, bruna).
mae(simone, jose).
mae(marilia,paulino).

%Avós
avos(X,Y):- pai(Z,Y), pai(X,Z).
avos(X,Y):- pai(Z,Y), mae(X,Z).
avos(X,Y):- mae(Z,Y), mae(X,Z).
avos(X,Y):- mae(Z,Y), pai(X,Z).

%Tios
tios(A,Y):- pai(Z,Y), pai(X,Z), pai(X,A), Z \= A.
tios(A,Y):- mae(Z,Y), mae(X,Z), mae(X,A), Z \= A.

%Netos
neto(X,Y):- pai(Z,X), pai(Y,Z).
neto(X,Y):- pai(Z,X), mae(Y,Z).
neto(X,Y):- mae(Z,X), mae(Y,Z).
neto(X,Y):- mae(Z,X), pai(Y,Z).

%Primos
primo(X,Y) :- pai(Z,X),tios(Z,Y).
primo(X,Y) :- mae(Z,X),tios(Z,Y).

%Bisavos
bisavos(X,Y) :-avos(Z,Y),pai(X,Z).
bisavos(X,Y) :-avos(Z,Y),mae(X,Z).

