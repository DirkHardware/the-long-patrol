if (isServer) then {
	if (civ_deaths > 4) then {
	_crew1 = creategroup EAST; 
	_airframe1 = [getMarkerPos "technispawn", 140, "OPTRE_M12_FAV_APC", _crew1] call BIS_fnc_spawnVehicle;

	_wp1 = _crew1 addWaypoint [(getmarkerpos "techniwp3"), 0];
	_wp1 setWaypointType "TR UNLOAD";
	_wp1 setWaypointSpeed "LIMITED";
	// _wp1 setwaypointstatements ["this land 'land'"];

	_wp2 = _crew1 addWaypoint [(getmarkerpos "techniwp2"), 0];
	_wp2 setWaypointType "MOVE";
	_wp2 setWaypointSpeed "LIMITED";

	// _wp3 = _crew1 addWaypoint [(getmarkerpos "techniwp1"), 0];
	// _wp3 setWaypointType "CYCLE";
	// _wp3 setWaypointSpeed "LIMITED";


	_mygroup = [getmarkerpos "technispawn", EAST, ["OPTRE_Ins_URF_Autorifleman","B_soldier_AR_F","B_soldier_AR_F","OPTRE_Ins_URF_Rifleman_AR"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
	_wp1a = _mygroup addWaypoint [getmarkerpos "techniwp3", 0];
	_wp1a setWayPointType "GETOUT";

	sleep .5;
	_mygroup = _mygroup;
	{ _x assignAsCargo (_airframe1 select 0); _x moveIncargo (_airframe1 select 0);} foreach units _mygroup;
	};
};