//_picks a random numbr
_rndnum =  floor(random 2);
// _rndnum = 0;
// hint str _rndnum;

//if statements use random number to pick spawnpoint
if (_rndnum == 0) then {
	_grp1 = [getMarkerPos "village1_spawn4a", east, ["CUP_O_Partisans_Engineer", "CUP_O_Partisans_Engineer"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
	_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp3_wp1", 0];
	_wp1 setWaypointType "GUARD"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "STEALTH";
    _wp1 setWaypointFormation "WEDGE";
}
else {
	_grp1 = [getMarkerPos "village1_spawn4b", east, ["CUP_O_Partisans_Engineer", "CUP_O_Partisans_Engineer"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;																												
	wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp4_wp2", 0];
	_wp1 setWaypointType "GUARD"; 
    _wp1 setWaypointSpeed "FULL";
    _wp1 setWaypointBehaviour "STEALTH";
    _wp1 setWaypointFormation "WEDGE";
};