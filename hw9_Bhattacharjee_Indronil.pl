% PA 9: Logic Programming
% Author: Indronil Bhattacharjee

% 1. listLen function will return the length of a given list
listLen(0, []).
listLen(N, [_|T]) :- listLen(M, T), N is M + 1.

% 2. dropK function will remove the Kth element of a list and return the rest of the list
dropK(Xs,Xs,0).
dropK(Xs,[_|Xs],1).
dropK([Y|Ys],[Y|Xs],K) :- K > 1, K1 is K - 1, dropK(Ys,Xs,K1).

% 3. divide function will divide a list at the given index and return two divided lists
divide([],L,L,0).
divide([X|Ys],Zs,[X|Xs],N) :- N > 0, N1 is N - 1, divide(Ys,Zs,Xs,N1).