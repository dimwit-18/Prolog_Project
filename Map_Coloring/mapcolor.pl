/**
* Prolog program for Map coloring problem
* Author : Krishna Pawan
* Rollno : CS18BTECH11008
**/
/* clause to check if the assigned color C to State S is present in The partially built Map */
invalid(Ns,C,CurrMap) :- 
    member(N,Ns),           % is a neighboring State
    member((N,C),CurrMap).  % and is colored same as State S (invalid).

/* accumulator for colorthemap clause. checks for validity everytime while inseting a color */
mapcoloracc([], _, Map, Map).
mapcoloracc([S:Ns|Rem], ColorsList, Map, Ans) :-  
    append(Map, [(S,C)], CurrMap),              % new current map is the old map + (S, C)
    member(C,ColorsList),                       % C is a color from the Colors List
    \+ invalid(Ns, C, CurrMap),                 % coloring state S with C is valid
    mapcoloracc(Rem, ColorsList, CurrMap, Ans). % repeat for remaining states

/* main clause to color the map */
colorthemap(List, Colors, Map) :- 
    mapcoloracc(List, Colors, [], Map).

/* read country name, states list, colors list from the user */
main:-
    write('Enter the country name:'), nl,
    read(Country),
    write('Enter the List of States:'), nl,
    read(StatesList),
    write('Enter the List of Colors:'), nl,
    read(Colors),
    format('The possible colorings of ~s map are: ~n', [Country]),
    colorthemap(StatesList, Colors, GetColoredMap),
    write(GetColoredMap), nl, fail.
