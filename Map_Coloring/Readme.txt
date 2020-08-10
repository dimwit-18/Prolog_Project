******************************************************************************************
                                                                                                                                                             
                         README FILE FOR MAP COLORING PROBLEM
                         
******************************************************************************************

# HOW TO RUN THE PROGRAM :-

To run the program, follow either of the procedures 

    method 1:
    1. open terminal.
    2. open SWI-Prolog by invoking swipl.
    3. type [mapcolor]. to load the program.
    
    method 2;
    1. open terminal and naviage to the directory where the program is present.
    2. enter swipl -s mapcolor.pl to load the program.
    
# INPUT DETAILS :-

 Follow the following procedure to enter input and get desired output.
 
 1. type ' main.' and press enter.
 2. the program prompts for country name. Type country name as
    <COUNTRY_NAME>. and press enter. Country name should being with lowercase letter.
 3. the program then prompts for list of states. Give input as a list of states with their
    neighbors as <[STATE1 : [N1S1, N2S1,......NkS1],....STATEn : [N1Sn, N2Sn,......NkSn]]>.
    and  press enter. All states should begin with lowercase .
 4. the program then prompts for list of colors. give input as a list of colors as 
    <[COLOR1, COLOR2, COLOR3, COLOR4]>. Colors should begin with lowercase.
 5. A list of all possible colorings will be printed as output.
 
 # OUTPUT DETAILS :-
 
 The output is all the possible colorings for the given map, each of form :
 [(state1, color1), (state2, color2),......(staten, colorn)]
 
 **
 An Example:-
 **
 
?- main.
Enter the country name:
|: india.
Enter the List of States:
|: [a:[b,c,d,e], b:[a,c,d,f], c:[a,b,d], d:[a,b,c,e,f], e:[a,d,f], f:[b,d,e]].
Enter the List of Colors:
|: [red, green, blue, yellow].
The possible colorings of india map are: 
[(a,red),(b,green),(c,blue),(d,yellow),(e,green),(f,red)]
[(a,red),(b,green),(c,blue),(d,yellow),(e,green),(f,blue)]
[(a,red),(b,green),(c,blue),(d,yellow),(e,blue),(f,red)]
[(a,red),(b,green),(c,yellow),(d,blue),(e,green),(f,red)]
[(a,red),(b,green),(c,yellow),(d,blue),(e,green),(f,yellow)]
[(a,red),(b,green),(c,yellow),(d,blue),(e,yellow),(f,red)]
[(a,red),(b,blue),(c,green),(d,yellow),(e,green),(f,red)]
[(a,red),(b,blue),(c,green),(d,yellow),(e,blue),(f,red)]
[(a,red),(b,blue),(c,green),(d,yellow),(e,blue),(f,green)]
[(a,red),(b,blue),(c,yellow),(d,green),(e,blue),(f,red)]
[(a,red),(b,blue),(c,yellow),(d,green),(e,blue),(f,yellow)]
[(a,red),(b,blue),(c,yellow),(d,green),(e,yellow),(f,red)]
[(a,red),(b,yellow),(c,green),(d,blue),(e,green),(f,red)]
[(a,red),(b,yellow),(c,green),(d,blue),(e,yellow),(f,red)]
[(a,red),(b,yellow),(c,green),(d,blue),(e,yellow),(f,green)]
[(a,red),(b,yellow),(c,blue),(d,green),(e,blue),(f,red)]
[(a,red),(b,yellow),(c,blue),(d,green),(e,yellow),(f,red)]
[(a,red),(b,yellow),(c,blue),(d,green),(e,yellow),(f,blue)]
[(a,green),(b,red),(c,blue),(d,yellow),(e,red),(f,green)]
[(a,green),(b,red),(c,blue),(d,yellow),(e,red),(f,blue)]
[(a,green),(b,red),(c,blue),(d,yellow),(e,blue),(f,green)]
[(a,green),(b,red),(c,yellow),(d,blue),(e,red),(f,green)]
[(a,green),(b,red),(c,yellow),(d,blue),(e,red),(f,yellow)]
[(a,green),(b,red),(c,yellow),(d,blue),(e,yellow),(f,green)]
[(a,green),(b,blue),(c,red),(d,yellow),(e,red),(f,green)]
[(a,green),(b,blue),(c,red),(d,yellow),(e,blue),(f,red)]
[(a,green),(b,blue),(c,red),(d,yellow),(e,blue),(f,green)]
[(a,green),(b,blue),(c,yellow),(d,red),(e,blue),(f,green)]
[(a,green),(b,blue),(c,yellow),(d,red),(e,blue),(f,yellow)]
[(a,green),(b,blue),(c,yellow),(d,red),(e,yellow),(f,green)]
[(a,green),(b,yellow),(c,red),(d,blue),(e,red),(f,green)]
[(a,green),(b,yellow),(c,red),(d,blue),(e,yellow),(f,red)]
[(a,green),(b,yellow),(c,red),(d,blue),(e,yellow),(f,green)]
[(a,green),(b,yellow),(c,blue),(d,red),(e,blue),(f,green)]
[(a,green),(b,yellow),(c,blue),(d,red),(e,yellow),(f,green)]
[(a,green),(b,yellow),(c,blue),(d,red),(e,yellow),(f,blue)]
[(a,blue),(b,red),(c,green),(d,yellow),(e,red),(f,green)]
[(a,blue),(b,red),(c,green),(d,yellow),(e,red),(f,blue)]
[(a,blue),(b,red),(c,green),(d,yellow),(e,green),(f,blue)]
[(a,blue),(b,red),(c,yellow),(d,green),(e,red),(f,blue)]
[(a,blue),(b,red),(c,yellow),(d,green),(e,red),(f,yellow)]
[(a,blue),(b,red),(c,yellow),(d,green),(e,yellow),(f,blue)]
[(a,blue),(b,green),(c,red),(d,yellow),(e,red),(f,blue)]
[(a,blue),(b,green),(c,red),(d,yellow),(e,green),(f,red)]
[(a,blue),(b,green),(c,red),(d,yellow),(e,green),(f,blue)]
[(a,blue),(b,green),(c,yellow),(d,red),(e,green),(f,blue)]
[(a,blue),(b,green),(c,yellow),(d,red),(e,green),(f,yellow)]
[(a,blue),(b,green),(c,yellow),(d,red),(e,yellow),(f,blue)]
[(a,blue),(b,yellow),(c,red),(d,green),(e,red),(f,blue)]
[(a,blue),(b,yellow),(c,red),(d,green),(e,yellow),(f,red)]
[(a,blue),(b,yellow),(c,red),(d,green),(e,yellow),(f,blue)]
[(a,blue),(b,yellow),(c,green),(d,red),(e,green),(f,blue)]
[(a,blue),(b,yellow),(c,green),(d,red),(e,yellow),(f,green)]
[(a,blue),(b,yellow),(c,green),(d,red),(e,yellow),(f,blue)]
[(a,yellow),(b,red),(c,green),(d,blue),(e,red),(f,green)]
[(a,yellow),(b,red),(c,green),(d,blue),(e,red),(f,yellow)]
[(a,yellow),(b,red),(c,green),(d,blue),(e,green),(f,yellow)]
[(a,yellow),(b,red),(c,blue),(d,green),(e,red),(f,blue)]
[(a,yellow),(b,red),(c,blue),(d,green),(e,red),(f,yellow)]
[(a,yellow),(b,red),(c,blue),(d,green),(e,blue),(f,yellow)]
[(a,yellow),(b,green),(c,red),(d,blue),(e,red),(f,yellow)]
[(a,yellow),(b,green),(c,red),(d,blue),(e,green),(f,red)]
[(a,yellow),(b,green),(c,red),(d,blue),(e,green),(f,yellow)]
[(a,yellow),(b,green),(c,blue),(d,red),(e,green),(f,blue)]
[(a,yellow),(b,green),(c,blue),(d,red),(e,green),(f,yellow)]
[(a,yellow),(b,green),(c,blue),(d,red),(e,blue),(f,yellow)]
[(a,yellow),(b,blue),(c,red),(d,green),(e,red),(f,yellow)]
[(a,yellow),(b,blue),(c,red),(d,green),(e,blue),(f,red)]
[(a,yellow),(b,blue),(c,red),(d,green),(e,blue),(f,yellow)]
[(a,yellow),(b,blue),(c,green),(d,red),(e,green),(f,yellow)]
[(a,yellow),(b,blue),(c,green),(d,red),(e,blue),(f,green)]
[(a,yellow),(b,blue),(c,green),(d,red),(e,blue),(f,yellow)]
false.
