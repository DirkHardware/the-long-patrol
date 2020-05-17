

// _rndnum =  floor(random 3);
_rndnum = 1;
hint toString[_rndnum];

if (_rndnum == 0) then {
	hint "spawn a";
	_grp1 = [getMarkerPos "amb1_spawn1a", east, ["OPTRE_Ins_ER_Guerilla_AR", "OPTRE_Ins_ER_Guerilla_AR", "OPTRE_Ins_ER_Autorifleman"],[],[],[],[],[],20] call BIS_fnc_spawnGroup;
};

if (_rndnum == 1) then {
	hint "spawn b";
	_grp1 = [getMarkerPos "amb1_spawn1b", east,["OPTRE_Ins_ER_Guerilla_AR", "OPTRE_Ins_ER_Insurgent_BR", "OPTRE_Ins_ER_Autorifleman"],[],[],[],[],[],20] call BIS_fnc_spawnGroup;	
	_crew1 = creategroup EAST; 
	_car1 = [getMarkerPos "amb1_spawn1b_v", 279, "OPTRE_m1087_stallion_unsc", _crew1] call BIS_fnc_spawnVehicle;
	_wp1b = _crew1 addWaypoint [(getMarkerPos "amb1_grp1_wp1"), 0];
	_wp1b setWaypointType "MOVE";
	_wp1b setWaypointSpeed "FULL";
	sleep 1;
	_crew2 = createGroup EAST;
	_crewman = "OPTRE_Ins_ER_Farmer" createUnit [getMarkerPos "amb1_spawn1b_v2", _crew2];
	// _crewman moveInDriver car2;
	_wp1c = _crew2 addWayPoint [(getMarkerPos "amb1_grp1_wp2"), 1];
	_wp1c setWaypointType "MOVE";
	_wp1c setWaypointSpeed "FULL";

}; 

if (_rndnum == 2) then {
	hint "spawn c";
	_grp1 = [getMarkerPos "amb1_spawn1c", east, ["OPTRE_Ins_ER_Guerilla_AR", "OPTRE_Ins_ER_Insurgent_BR", "OPTRE_Ins_ER_Autorifleman"],[],[],[],[],[],20] call BIS_fnc_spawnGroup;
};

