if (isServer) then {
	//_picks a random numbr
	_rndnum =  floor(random 2);
	if (_rndnum == 0) then {
		_grp1 = [getMarkerPos "amb1_spawn2a", east, ["OPTRE_Ins_ER_Farmer", "OTRE_Rifleman_AR", "CUP_O_Ins_Soldier_AT"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_wp1 = _grp1 addWaypoint [getmarkerpos "amb1_grp2_wp1a", 0];
		_wp1 setWaypointType "MOVE"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "AWARE";
		_wp1 setWaypointFormation "WEDGE";
		_wp2 = _grp1 addWaypoint[getMarkerPos "amb1_grp2_wp2a"];
		_wp2 setWaypointType "SAD"; 
		_wp2 setWaypointSpeed "FULL";
		_wp2 setWaypointBehaviour "STEALTH";
		_wp2 setWaypointFormation "WEDGE";
	}
	else {
		_grp1 = [getMarkerPos "amb1_spawn2b", east, ["CUP_Ins_ER_Hacker", "OPTRE_Ins_ER_Hunter, CUP_O_Ins_Soldier_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
		_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp1_wp1b", 0];
		_wp1 setWaypointType "SAD"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "STEALTH";
		_wp1 setWaypointFormation "DIAMOND";																														
	};
};

