permutation(L,[],L).
permutation([T|Q],[T|L1],L2) :- permutation(Q,L1,L2).
solution(0,L,[],L).
solution(N,L,[T|L3],R) :- N>0, permutation(L,L1,[T|L2]), N1 is N-1, solution(N1,L2,L3,L4), append(L1,L4,R).