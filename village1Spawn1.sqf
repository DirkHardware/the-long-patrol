if (isServer) then {
	//_picks a random numbr
	_rndnum =  floor(random 2);
	// _rndnum = 0;
	// hint str _rndnum;

	//if statements use random number to pick spawnpoint
	if (_rndnum == 0) then {
		//waypoints assigned using the coordinates of map markers
		//This is the sugarcane patch at the edge of town
		_grp1 = [getMarkerPos "village1_spawn1a", east, ["OPTRE_Ins_ER_Farmer"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp1_wp1", 0];
		_wp1 setWaypointType "SAD"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "STEALTH";
		_wp1 setWaypointFormation "WEDGE";
	}
	else {
		//This is behind a nearby building
		_grp1 = [getMarkerPos "village1_spawn1b", east, ["CUP_Ins_ER_Hacker"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp1_wp1", 0];
		_wp1 setWaypointType "SAD"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "STEALTH";
		_wp1 setWaypointFormation "COLUMN";																														
	};
};

// _wp1 = grp1 addWaypoint [getmarkerpos "vil1_grp1_wp1", 0];
// _wp2 = grp1 addWaypoint [getmarkerpos "vil1_grp1_wp2", 0];