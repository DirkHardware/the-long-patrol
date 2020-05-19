// if (isServer) then {

// 	_rndnum =  floor(random 2);

// 	if (_rndnum == 0) then {
// 		_grp1 = [getMarkerPos "village1_spawn4a", east, ["CUP_O_Soldiers_AK74", "OPTRE_Ins_ER_Rifleman_AR"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;
// 		_wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp3_wp1", 0];
// 		_wp1 setWaypointType "GUARD"; 
// 		_wp1 setWaypointSpeed "FULL";
// 		_wp1 setWaypointBehaviour "STEALTH";
// 		_wp1 setWaypointFormation "WEDGE";
// 	}
// 	else {
// 		_grp1 = [getMarkerPos "village1_spawn4b", east, ["OPTRE_Ins_ER_Autorifleman", "OPTRE_Ins_ER_Rifleman_AR", "CUP_O_Soldiers_AK74"],[],[],[],[],[],180] call BIS_fnc_spawnGroup;																												
// 		wp1 = _grp1 addWaypoint [getmarkerpos "vil1_grp4_wp2", 0];
// 		_wp1 setWaypointType "GUARD"; 
// 		_wp1 setWaypointSpeed "FULL";
// 		_wp1 setWaypointBehaviour "STEALTH";
// 		_wp1 setWaypointFormation "WEDGE";
// 	};
// };