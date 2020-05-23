//initPlayerLoca.sqf

god = false;
host_clr = true;
civ_deaths = 5;


[1, "BLACK", 4, 1] spawn BIS_fnc_fadeEffect;

// _rndnum = floor (random 3);
_rndnum = 0;

_objpos = [getMarkerPos "vil1_obj_spawn0", getMarkerPos "vil1_obj_spawn1", getMarkerPos "vil1_obj_spawn2"];

_obj = createGroup independent; 
boss = _obj createUnit ["OPTRE_Ins_ER_Warlord", _objpos select _rndnum, [], 0, "FORM"];
// _obj = [_objpos select _rndnum, independent, ["OPTRE_Ins_ER_Warlord"],[],[],[],[],[],180] call BIS_fnc_spawnGroup; 
_grp1 = [_objpos select _rndnum, east, ["OPTRE_Ins_ER_MAdvisor", "OPTRE_Ins_ER_Farmer", "OPTRE_Ins_ER_Guerilla_AR"], [],[],[],[],[], 180] call BIS_fnc_spawnGroup;
_ins_wp1 = _grp1 addWaypoint [_objpos select _rndnum, 0];
_ins_wp1 setWaypointType "HOLD"; 
_ins_wp1 setWaypointSpeed "FULL";
_ins_wp1 setWaypointBehaviour "SAFE";
_ins_wp1 setWaypointFormation "DIAMOND";
_obj_wp1 = _obj addWaypoint [_objpos select _rndnum, 0];
_obj_wp1 setWaypointType "HOLD";
_obj_wp1 setWaypointBehaviour "CARELESS";
