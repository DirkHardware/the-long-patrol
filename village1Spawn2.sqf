if (isServer) then {
	_rndnum =  floor(random 3);

	if (_rndnum == 0) then {
		_grp2 = [getMarkerPos "village1_spawn2a", east, ["OPTRE_Ins_ER_Farmer", "OPTRE_Ins_ER_Hacker"],[],[],[],[],[],90] call BIS_fnc_spawnGroup;
		// _wp1 = _grp2 addWaypoint [getmarkerpos "vil1_grp2_wp1a", 0];
		// _wp1 setWaypointType "GUARD"; 
		// _wp1 setWaypointSpeed "FULL";
		// _wp1 setWaypointBehaviour "STEALTH";
		// _wp1 setWaypointFormation "LINE";
		
	};
	if (_rndnum == 1) then {
		_grp2 = [getMarkerPos "village1_spawn2b", east, ["OPTRE_Ins_ER_Insurgent_BR", "OPTRE_Ins_ER_Rifleman_AR"],[],[],[],[],[],0] call BIS_fnc_spawnGroup;
		_wp1 = _grp2 addWaypoint [getmarkerpos "vil1_grp2_wp1b", 0];
		_wp1 setWaypointType "SAD"; 
		_wp1 setWaypointSpeed "FULL";
		_wp1 setWaypointBehaviour "STEALTH";
		_wp1 setWaypointFormation "LINE";
	};

	if (_rndnum ==2) then {
		_grp2 = [getMarkerPos "village1_spawn2c", east, ["OPTRE_Ins_ER_Farmer_BR", "OPTRE_Ins_ER_Farmer_BR"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
	};
};