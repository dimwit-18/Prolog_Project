/**
* Prolog program for 8 Queens problem by DFS and BFS
* Author : Krishna Pawan
* Rollno : CS18BTECH11008
*     
* Concept :-
*
* For this problem let us construct a tree with each node corresponding to a valid state
* where Queens on a chessboard without any clash. i.e. if a node is represented by Nk, then
* it corresponds to the chessboard state [(1, Q1), (2, Q2).....(k, Qk)] whare each tuple in 
* the list represents the co-ordinates of a Queen on the chessboard. Now our task is to find 
* all the possible valid nodes [(1, Q1), (2, Q2).....(8, Q8)] which can be reach from [(1, Q1)]
**/

/* clause to check if Queen insertion at (R,C) is safe or not */
issafe(_, []).
issafe(R/C, [R1/C1 | Rem]) :- 
    C =\= C1,          % Queens at same coloumn
    C + R =\= C1 + R1, % Queens placed diagonally on left diagonal
    C - R =\= C1 - R1, % Queens placed diagonally on right diagonal
    issafe(R/C, Rem).  % check recursively for the remaining rows and columns
    
/* DFS clause */
dfs([]).
dfs([R/C | Rem]) :-
    dfs(Rem),                     % perform DFS on remaining rows and columns
    member(C, [1,2,3,4,5,6,7,8]), % and C is a member of 1..8
    issafe(R/C, Rem).             % and/if (R,C) is safe position to insert

/* main bfs clause */
bfs(Solve) :- 
    solve( [[8/1], [8/2], [8/3], [8/4], [8/5], [8/6], [8/7], [8/8]], Solve). % accumulator

/* clause to get head and tail of a list */
match([H|T], H, T). 

/* clause to find each element of the list that should be enqueued after popping a visited node */
enqueuelist(R, Visited, Enqueue):-
    member(C, [1,2,3,4,5,6,7,8]),
    append([R/C], Visited, Enqueue),
    match(Enqueue, H, T),
    issafe(H, T).

/* if length of the visited node (which is a list) is 8, then we reached final state, hence stop */
solve([Visited|List], [Visited|List]):-
    length(Visited, L),
    L = 8.

/* accumulator clause */
solve([Visited|Rest], Solve) :-
    length(Visited, L),                                      % continue if length less than 8
    L<8,
    R is 8-L,                                                % queen is next to be inserted at 8-L
    findall(Enqueue, enqueuelist(R, Visited, Enqueue), Set), % pop visited node and find the list of valid nodes that can be reached from the current node
    append(Rest, Set, UpdatedQueue),                         % enqueue the above list
    solve(UpdatedQueue, Solve).                              % repeat
    
/* clause to invoke DFS */
solveDFS :-
    L = [1/_, 2/_, 3/_, 4/_, 5/_, 6/_, 7/_, 8/_],
    write('All the possible solutions by DFS method are:'), nl,
    dfs(L),
    write(L), nl, fail.

/* clause to invoke BFS */
solveBFS :-
    write('All the possible solutions by BFS method are:'), nl,
    bfs(L),
    write(L),nl,fail.
