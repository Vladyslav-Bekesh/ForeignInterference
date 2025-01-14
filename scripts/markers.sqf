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

	_elektricDot = createMarkerLocal ["Electric", getPos elektric];
	_elektricDot setMarkerTypeLocal "hd_dot";
	_elektricDot setMarkerTextLocal "Electric";

	_sovereginPactDot = createMarkerLocal ["Sovereign Pact", getPos soverPactBase];
	_sovereginPactDot setMarkerTypeLocal "hd_dot";
	_sovereginPactDot setMarkerTextLocal "Sovereign Pact Base";

	_pickupDot = createMarkerLocal ["Cars", [4821.88, 5076.6]];
	_pickupDot setMarkerTypeLocal "hd_dot";
	_pickupDot setMarkerTextLocal "Pickups";
};

if (playerSide == west || playerSide == civilian) then {
	_pmcSideBaseDot = createMarkerLocal ["PMC 'Forest Devils' side base", getPos pmc_sidebase];
	_pmcSideBaseDot setMarkerTypeLocal "hd_dot";
	_pmcSideBaseDot setMarkerTextLocal "PMC 'Forest Devils' side base ";
};