maisons(0, []).
maison(N, [(_Nationalite,_Animal,_Couleur,_Boisson,_Fume)|T]):- N1 is N-1 , maisons(N1,T).

maison(1, [H|_], H).
maison(N, [_|T], R) :- N1 is N-1 , maison(N1, T, R).

indice1([(anglais,_,rouge,_,_)|_]).
indice1([_|T]):- indice1(T).

indice2([(suedois,chien,_,_,_)|_]).
indice2([_|T]):- indice2(T).

indice3([(danois,_,_,the,_)|_]).
indice3([_|T]):- indice3(T).

indice4([(_,_,verte,cafe,_),(_,_,blanche,_,_)|_]).
indice4([_|T]):- indice4(T).

indice5([(_,oiseaux,_,_,pallmall)|_]).
indice5([_|T]):- indice5(T).

indice6([(_,_,jaune,_,dunhill)|_]).
indice6([_|T]):- indice6(T).

indice7([(_,cheval,_,_,_), (_,_,jaune,_,dunhill)|_]).
indice7([(_,_,jaune,_,dunhill), (_,cheval,_,_,_)|_]).
indice7([_|T]):- indice7(T).

indice8(maisons) :- maison(1, Maisons, (norvegien,_,_,_,_)).

indice9(maisons) :- maison(2, Maisons, (_,_,bleu,_,_)).

indice10(maisons) :- maison(3, Maisons, (_,_,_,lait,_)).

indice11([(_,_,_,_,blend), (_,chat,_,_,_)|_]).
indice11([(_,chat,_,_,_), (_,_,_,_,blend)|_]).
indice11([_|T]):- indice11(T).

indice12([(_,_,_,eau,_), (_,_,_,_,blend)|_]).
indice12([(_,_,_,_,blend), (_,_,_,eau,_)|_]).
indice12([_|T]):- indice12(T).

indice13([(_,_,_,biere,bluemaster)|_]).
indice13([_|T]):- indice13(T).

indice14([(allemand,_,_,_,prince)|_]).
indice14([_|T]):- indice14(T).

indice15([(_,_,_,eau,_)|_]).
indice15([_|T]):- indice15(T).

question([(_,poisson,_,_,_)|_]).
question([_|T]).

solution(Maisons) :- maisons(5, Maisons), indice1(Maisons), indice2(Maisons), indice3(Maisons), indice4(Maisons), indice5(Maisons), indice6(Maisons), indice7(Maisons), indice8(Maisons), indice8(Maisons), indice9(Maisons), indice10(Maisons), indice11(Maisons), indice12(Maisons), indice13(Maisons), indice14(Maisons), indice15(Maisons), question(Maisons).