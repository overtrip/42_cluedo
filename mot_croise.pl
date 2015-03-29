mot(abandon,a,b,a,n,d,o,n).
mot(enhance,e,n,h,a,n,c,e).
mot(anagram,a,n,a,g,r,a,m).
mot(connect,c,o,n,n,e,c,t).
mot(elegant,e,l,e,g,a,n,t).

crosswd(A,B,C,X,Y,Z):- mot(A,_,A1,_,B1,_,C1,_),mot(B,_,A2,_,B2,_,C2,_),mot(C,_,A3,_,B3,_,C3,_),mot(X,_,A1,_,B1,_,C1,_),mot(Y,_,B1,_,B2,_,C2,_),mot(Z,_,C1,_,B3,_,C3,_).