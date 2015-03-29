word(entrave,e,n,t,r,a,v,e).
word(petales,p,e,t,a,l,e,s).
word(arrivee,a,r,r,i,v,e,e).
word(cyanure,c,y,a,n,u,r,e).
word(plainte,p,l,a,i,n,t,e).
word(valvule,v,a,l,v,u,l,e).

crosswd(WH1,WH2,WH3,WV1,WV2,WV3) :-
word(WV1,_,_,A1,A2,A3,_,_),
word(WH2,_,_,A1,B1,C1,_,_),
word(WH3,_,_,A2,B2,C2,_,_),
word(WH1,_,_,A3,B3,C3,_,_),
word(WV2,_,_,B1,B2,B3,_,_),
word(WV3,_,_,C1,C2,C3,_,_).