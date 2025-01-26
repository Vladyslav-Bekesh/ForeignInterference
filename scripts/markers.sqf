if (playerSide == east || playerSide == civilian) then {
	_blackMarketDot = createMarkerLocal ["Black Market", getPos blackMarket];
	_blackMarketDot setMarkerTypeLocal "hd_dot";
	_blackMarketDot setMarkerTextLocal "Black Market";

	_bomberDot = createMarkerLocal ["Bomber", getPos bomber];
	_bomberDot setMarkerTypeLocal "hd_dot";
	_bomberDot setMarkerTextLocal "Bomber";
};

if (playerSide == west || playerSide == civilian) then {};