homme(marc).
homme(luc).
homme(jean).
homme(jules).
homme(leon).
homme(loic).
homme(gerard).
homme(jacques).
homme(herve).
homme(paul).

femme(valerie).
femme(anne).
femme(betty).
femme(lisa).
femme(sylvie).
femme(eve).
femme(julie).

mari_de(anne, marc).
mari_de(lisa,jules).
mari_de(sylvie,leon).
mari_de(eve,loic).
mari_de(betty,luc).
mari_de(julie,paul).

femme_de(X,Y):- mari_de(Y,X).

enfant_de(anne,jean).
enfant_de(anne,jules).
enfant_de(anne,leon).
enfant_de(betty,lisa).
enfant_de(betty,loic).
enfant_de(betty,gerard).
enfant_de(lisa,jacques).
enfant_de(sylvie,herve).
enfant_de(sylvie,julie).
enfant_de(eve,paul).
enfant_de(eve,valerie).

enfant_de(X,Y) :- femme_de(X,Z) , enfant_de(Z,Y).

parent_de(X,Y) :- enfant_de(Y,X).

beaupere_de(X,Y) :- parent_de(Z,Y) , mari_de(X,Z) , homme(Y).

bellemere_de(X,Y) :- parent_de(Z,Y) , femme_de(Z,X) , femme(Y).

ancetre_de(X,Y) :- enfant_de(Y,X).

ancetre_de(X,Y) :- enfant_de(Y,Z) , ancetre_de(X,Z).