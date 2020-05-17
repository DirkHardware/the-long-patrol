if (isServer) then {
	_rndnum =  floor(random 2);
	// _rndnum = 0;
	// hint str _rndnum;

	//if statements use random number to pick spawnpoint
	if (_rndnum == 0) then {
		_grp1 = [getMarkerPos "village1_spawn3a", east, ["CUP_O_Soldiers_AK74", "OPTRE_Ins_ER_Rifleman_AR"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp3_wp1", 0];
		_wp1 setWaypointType "GUARD"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "STEALTH";
		_wp1 setWaypointFormation "WEDGE";
	}
	else {
		_grp1 = [getMarkerPos "village1_spawn3b", east, ["CUP_O_Partisans_Engineer", "OPTRE_Ins_ER_Farmer"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp3_wp2", 0];
		_wp1 setWaypointType "SAD"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "STEALTH";
		_wp1 setWaypointFormation "COLUMN";																														
	};
};