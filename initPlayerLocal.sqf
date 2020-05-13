//initPlayerLoca.sqf

_unit = _this select 0;
_isJIP = _this select 1;

if (!_isJIP) then 
{
    [1, "BLACK", 4, 1] spawn BIS_fnc_fadeEffect;

} else {
    hint "Why are you so late?";
};