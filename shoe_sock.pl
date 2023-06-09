socks([red, green, blue, yellow, purple, orange]).
shoes([sneakers, boots, flipflops, loafers, sandals, clogs]).

match(Sock, Shoe) :-
    socks(Socks),
    shoes(Shoes),
    member(Sock, Socks),
    member(Shoe, Shoes),
    SockColor = Shoe,
    write('Matching sock: '), write(Sock), nl,
    write('Matching shoe: '), write(Shoe), nl.

%input: match(red,blue).