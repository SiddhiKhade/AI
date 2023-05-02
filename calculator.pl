sum(X,Y):-
 S is X+Y,
 write(S).

sub(X,Y):-
 S is X-Y,
 write(S).

mul(X,Y):-
 S is X*Y,
 write(S).

div(X,Y):-
 S is X/Y,
 write(S).

#input: sum(2,3). or sub(4,2). or mul(3,5). or div(4,2).