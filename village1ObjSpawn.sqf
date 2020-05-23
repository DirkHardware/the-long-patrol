_rndnum = floor (random 3);

_objpos = ["vil1_obj_spawn0", "vil1_obj_spawn1", "vil1_obj_spawn2"];

_host = [_objpos select _rndnum, independent, ["CUP_C_C_Citizen_01", "CUP_C_C_Citizen_02"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
_grp1 = [_objpos select _rndnum, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Hacker", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
_ins_wp1 = _grp1 addWaypoint [_objpos select _rndnum, 0];
_ins_wp1 setWaypointType "GUARD"; 
_ins_wp1 setWaypointSpeed "FULL";
_ins_wp1 setWaypointBehaviour "STEALTH";
_ins_wp1 setWaypointFormation "DIAMOND";
_host_wp1 = _host addWaypoint [_objpos select _rndnum, 0];
_host_wp1 setWaypointType "HOLD";
_host_wp1 setWaypointBehaviour "CARELESS";

