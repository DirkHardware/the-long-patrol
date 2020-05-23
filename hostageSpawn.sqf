_rndnum = floor(random 5);
_rndnum = 4;
_hostpos = [getMarkerPos "host_host_spawn0", getMarkerPos "host_host_spawn1", getMarkerPos "host_host_spawn2", getMarkerPos "host_host_spawn3", getMarkerPos "host_host_spawn4"];
_inspos = [getMarkerPos "host_ins_spawn0", getMarkerPos "host_ins_spawn1", getMarkerPos "host_ins_spawn2", getMarkerPos "host_ins_spawn3", getMarkerPos "host_ins_spawn4"];

_host = [_hostpos select _rndnum, civilian, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
_grp1 = [_inspos select _rndnum, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
_ins_wp1 = _grp1 addWaypoint [_inspos select _rndnum, 0];
_ins_wp1 setWaypointType "GUARD"; 
_ins_wp1 setWaypointSpeed "FULL";
_ins_wp1 setWaypointBehaviour "STEALTH";
_ins_wp1 setWaypointFormation "DIAMOND";
_host_wp1 = _host addWaypoint [_hostpos select _rndnum, 0];
_host_wp1 setWaypointType "HOLD";
_host_wp1 setWaypointBehaviour "CARELESS";
// switch _rndnum do {
//     case 0: { hint "0";
// 		_host = [_hostpos select 0, civilian, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
// 		_grp1 = [_inspos select 0, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
// 		_ins_wp1 = _grp1 addWaypoint [_inspos select 0, 0];
// 		_ins_wp1 setWaypointType "GUARD"; 
// 		_ins_wp1 setWaypointSpeed "FULL";
// 		_ins_wp1 setWaypointBehaviour "STEALTH";
// 		_ins_wp1 setWaypointFormation "DIAMOND";
// 		_host_wp1 = _host addWaypoint [_hostpos select 0, 0];
// 		_host_wp1 setWaypointType "HOLD";
// 		_host_wp1 setWaypointBehaviour "CARELESS";
// 	};
//     case 1: { hint "1"; 
// 		_host = [ _hostpos select 1, civilian, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
// 		_grp1 = [_inspos select 1, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
// 		_ins_wp1 = _grp1 addWaypoint [_inspos select 1, 0];
// 		_ins_wp1 setWaypointType "GUARD"; 
// 		_ins_wp1 setWaypointSpeed "FULL";
// 		_ins_wp1 setWaypointBehaviour "STEALTH";
// 		_ins_wp1 setWaypointFormation "DIAMOND";
// 		_host_wp1 = _host addWaypoint [_hostpos select 1, 0];
// 		_host_wp1 setWaypointType "HOLD";
// 		_host_wp1 setWaypointBehaviour "CARELESS";
// 	};
// 	case 2: { hint "2"; 
// 		_host = [ _hostpos select 2, civilian, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
// 		_grp1 = [_inspos select 2, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
// 		_ins_wp1 = _grp1 addWaypoint [_inspos select 2, 0];
// 		_ins_wp1 setWaypointType "GUARD"; 
// 		_ins_wp1 setWaypointSpeed "FULL";
// 		_ins_wp1 setWaypointBehaviour "STEALTH";
// 		_ins_wp1 setWaypointFormation "DIAMOND";
// 		_host_wp1 = _host addWaypoint [_hostpos select 2, 0];
// 		_host_wp1 setWaypointType "HOLD";
// 		_host_wp1 setWaypointBehaviour "CARELESS";
// 	};
// 	case 3: { hint "3"; 
// 		_host = [ _hostpos select 3, civilian, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
// 		_grp1 = [_inspos select 3, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
// 		_ins_wp1 = _grp1 addWaypoint [_inspos select 3, 0];
// 		_ins_wp1 setWaypointType "GUARD"; 
// 		_ins_wp1 setWaypointSpeed "FULL";
// 		_ins_wp1 setWaypointBehaviour "STEALTH";
// 		_ins_wp1 setWaypointFormation "DIAMOND";
// 		_host_wp1 = _host addWaypoint [_hostpos select 3, 0];
// 		_host_wp1 setWaypointType "HOLD";
// 		_host_wp1 setWaypointBehaviour "CARELESS";
// 	};
// 	case 4: { hint "4";
// 		_host = [ _hostpos select 4, civilian, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
// 		_grp1 = [_inspos select 4, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup; 
// 		_ins_wp1 = _grp1 addWaypoint [_inspos select 4, 0];
// 		_ins_wp1 setWaypointType "GUARD"; 
// 		_ins_wp1 setWaypointSpeed "FULL";
// 		_ins_wp1 setWaypointBehaviour "STEALTH";
// 		_ins_wp1 setWaypointFormation "DIAMOND";
// 		_host_wp1 = _host addWaypoint [_hostpos select 4, 0];
// 		_host_wp1 setWaypointType "HOLD";
// 		_host_wp1 setWaypointBehaviour "CARELESS";
// 	};
//     default { hint "default" };
// };

// format [getPos "host0"]