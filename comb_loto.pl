permutation(A,[],A).
permutation([P|D],[T|A1],A2) :- permutation(D, A1,A2).

solution(0,A,[],A).
solution(N,A,[P|A3],R) :- N>0, N1 is N-1, solution(N1,A2,A3,A4), permutation(A,A1,[P|A2]), append(A1,A4,R).