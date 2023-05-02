male(jay).
male(bipin).
male(ukabhai).
female(rupal).
female(savitaben).
female(janavi).

parent(ukabhai,bipin).
parent(savitaben,bipin).
parent(bipin,jay).
parent(rupal,jay).
parent(bipin,janavi).
parent(rupal,janavi).

%mother(savitaben,bipin):- parent(savitaben,bipin), female(savitaben).
%mother(rupal,jay):- parent(rupal,jay), female(rupal).
%mother(rupal,janavi):- parent(rupal,janavi), female(rupal).
%father(ukabhai,bipin):- parent(ukabhai,bipin), male(ukabhai).
%father(bipin,jay):-parent(bipin,jay),male(bipin).
%father(bipin,janavi):-parent(bipin,janavi),male(bipin).

% grandfather(ukabhai,jay):-parent(ukabhai,bipin),parent(bipin,jay),male(ukabhai).
%
% grandfather(ukabhai,janavi):-parent(ukabhai,bipin),parent(bipin,janavi),male(ukabhai).
%
% grandmother(savitaben,jay):-parent(savitaben,bipin),parent(bipin,jay),female(savitaben).
%
% grandmother(savitaben,janavi):-parent(savitaben,bipin),parent(bipin,janavi),female(savitaben).
%

mother(A,B):- parent(A,B), female(A).
father(A,B):- parent(A,B), male(A).
grandfather(A,C):-parent(A,B),parent(B,C),male(A).
grandmother(A,C):-parent(A,B),parent(B,C),female(A).
siblings(A,B):-father(C,A),father(C,B),mother(D,A),mother(D,B).




