if (LOG_INPROGRESS) then {
	localize "STR_LOG_INPROGRESS" call dayz_rollingMessages;
} else {
	LOG_OBJECT_SELECTION = _this select 0;
	format [localize "STR_LOG_NOW_SELECT", getText (configFile >> "CfgVehicles" >> (typeOf LOG_OBJECT_SELECTION) >> "displayName")] call dayz_rollingMessages;
};