if (playerSide == east || playerSide == civilian) then {
	_medicDot = createMarkerLocal ["Medic", getPos medic];
	_medicDot setMarkerTypeLocal "hd_dot";
	_medicDot setMarkerTextLocal "Medic";

	_blackMarketDot = createMarkerLocal ["Black Market", getPos blackMarket];
	_blackMarketDot setMarkerTypeLocal "hd_dot";
	_blackMarketDot setMarkerTextLocal "Black Market";

	_bomberDot = createMarkerLocal ["Bomber", getPos bomber];
	_bomberDot setMarkerTypeLocal "hd_dot";
	_bomberDot setMarkerTextLocal "Bomber";

	_elektricDot = createMarkerLocal ["Black Market", getPos elektric];
	_elektricDot setMarkerTypeLocal "hd_dot";
	_elektricDot setMarkerTextLocal "Black Market";

	_sovereginPactDot = createMarkerLocal ["Sovereign Pact", getPos soverPactBase];
	_sovereginPactDot setMarkerTypeLocal "hd_dot";
	_sovereginPactDot setMarkerTextLocal "Sovereign Pact Base";
};

if (playerSide == west || playerSide == civilian) then {
	_markerstr = createMarkerLocal ["markername", [500, 500]];
	_markerstr setMarkerShape "RECTANGLE";
	_markerstr setMarkerSize [500, 500];
	_markerstr setMarkerSize [500, 500];
};

hint "created";