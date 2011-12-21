% 
% This file containts all the print functions
% 
% 
% 

taxiPickupCustomer(TaxID,CID,PickupTime) :-
	customer(CID,_,_,Start,_),
	node(Start,X,Y),
	write('Taxi '),
	write(TaxID),
	write(' picks up customer '),
	write(CID),
	write(' at ('),
	write(X),
	write(','),
	write(Y),
	write(') at time '),
	write(PickupTime).
	

printTaxiStarted(TaxID,Time,Cust) :-
	write(Time),
	write(' : Taxi '),
	write(TaxID),
	write(' started at parking lot to pickup customer(s) '),
	writeln(Cust).

printTaxiReachedNode(TaxID,Time,Node) :-
	write(Time),
	write(' : Taxi '),
	write(TaxID),
	write(' reached node '),
	writeln(Node).
