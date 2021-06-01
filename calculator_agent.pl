calculator :-
write('Enter 1 for business calculator'),
nl,
write('Enter 2 for bmi calculator'),
nl,
write('Enter 3 for zakat calculator'),
nl,
write('Enter : '),
read(A),
checka(A),
nl.

checka(A) :-
A =:= 1, business(A);
A =:= 2, bmi(A);
A =:= 3, zakat(A).

business(A) :-
write('Press 1 for summation'),
nl,
write('Press 2 for substraction'),
nl,
write('Press 3 for multiplication'),
nl,
write('Press 4 for division'),
nl,
write('Enter : '),
read(B),
checkb(B),
nl.

checkb(B) :-
B =:= 1, summation(B);
B =:= 2, substraction(B);
B =:= 3, multiplication(B);
B =:= 4, division(B);
nl.

summation(B) :-
write('Enter two number : '),
read(C),
read(D),
sum(C,D).

sum(C,D) :- 
R is C+D,nl,
write('Result : '),
write(R).

substraction(B) :-
write('Enter two number : '),
read(C),
read(D),
subs(C,D).

subs(C,D) :- 
R is C-D,nl,
write('Result : '),
write(R).

multiplication(B) :-
write('Enter two number : '),
read(C),
read(D),
mul(C,D).

mul(C,D) :- 
R is C*D,nl,
write('Result : '),
write(R).

division(B) :-
write('Enter two number : '),
read(C),
read(D),
dib(C,D).

dib(C,D) :- 
R is C/D,nl,
write('Result : '),
write(R).

bmi(A) :-
write('Enter weight(in kg) : '),
read(W),
write('Enter  height(in meter) : '),
read(H),
checkbmi(W,H).

checkbmi(W,H) :-
B is W/(H * H),nl,
write('Bmi : '),
write(B),
nl.


zakat(A) :-
write('Enter Amount(Use Lowest amount held for 1 year) : '),
read(M),
write('Enter Gold/Silver(Monetary value): '),
read(G),
write('Enter Money own to you(Deposits , Loans you made): '),
read(D),
write('Enter Resale value of shares, stocks, bonds, etc : '),
read(R),
Y is M+G+D+R,
write('Total ammount :'),
write(Y),
checkz(Y),
nl.

checkz(Y) :-
Z is (Y * 2.5)/100,nl,
write('Zakat :'),
write(Z).
