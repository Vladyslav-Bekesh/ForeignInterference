if (!isServer) exitWith {};

params ["_object"];

//  west
if (playerSide == west || playerSide == civilian) then {
	// main base
	_action = [ "TP to Main Base", "TP to Main Base", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa", {
		_player setPos (getPos MainBase);
	}, {
		true
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
	[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	// city
	_action = [ "TP to Side Base", "TP to Side Base", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa", {
		_player setPos (getPos SideBase);
	}, {
		true
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
	[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	// side base
	_action = [ "TP to City Base", "TP to City Base", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa", {
		_player setPos (getPos CityBase);
	}, {
		true
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
	[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
};

//  east
if (playerSide == east || playerSide == civilian) then {
	// main base
	_action = [ "TP to Main Base", "TP to Main Base", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa", {
		_player setPos (getPos pacMainBase);
	}, {
		true
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
	[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	// city
	_action = [ "TP to City", "TP to City", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa", {
		_player setPos (getPos City);
	}, {
		true
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
	[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

	// pmc kuma
	_action = [ "TP to PMC 'Kuma Security'", "TP to PMC 'Kuma Security'", "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_takeOff1_ca.paa", {
		_player setPos (getPos pmcKumaMainBase);
	}, {
		true
	}, {}, [], [0, 0, 0], 100] call ace_interact_menu_fnc_createAction;
	[_object, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;
};