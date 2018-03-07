AvgOrdOfGroup := function(G)
	local sum, g;
	sum := 0;
	for g in G do
		sum := sum + Order(g);
	od;
	return sum/Size(G);
end;

AvgOrdOfComm := function(G)
local sum, g, h, comms;
	sum := 0;
	comms := [];
	for g in G do
		for h in G do
			AddSet(comms, g*h*(g^(-1))*(h^(-1)));
		od;
	od;
	for g in comms do
		sum := sum + Order(g);
	od;
	return sum/Size(comms);
end;
