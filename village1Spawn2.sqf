//_picks a random numbr
_rndnum =  floor(random 3);
// _rndnum = 0;
// hint str _rndnum;

//if statements use random number to pick spawnpoint
if (_rndnum == 0) then {
	_grp2 = [getMarkerPos "village1_spawn2a", east, ["CUP_O_Partisans_Engineer", "CUP_O_Partisans_Engineer"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
	_wp1 = _grp2 addWaypoint [getmarkerpos "vil1_grp2_wp1a", 0];
	_wp1 setWaypointType "GUARD"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "STEALTH";
    _wp1 setWaypointFormation "LINE";
	
};
if (_rndnum == 1) then {
	_grp2 = [getMarkerPos "village1_spawn2b", east, ["CUP_O_Partisans_Engineer", "CUP_O_Partisans_Engineer"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
	_wp1 = _grp2 addWaypoint [getmarkerpos "vil1_grp2_wp1B", 0];
	_wp1 setWaypointType "SAD"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "STEALTH";
    _wp1 setWaypointFormation "LINE";
};

if (_rndnum ==2) then {
	_grp2 = [getMarkerPos "village1_spawn2c", east, ["OPTRE_Ins_ER_Hunter_BR", "OPTRE_Ins_ER_Hunter_BR"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
};