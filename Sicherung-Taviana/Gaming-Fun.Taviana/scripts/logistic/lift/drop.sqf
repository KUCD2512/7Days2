if (LOG_INPROGRESS) then {
	localize "STR_LOG_INPROGRESS" call dayz_rollingMessages;
} else {
	LOG_INPROGRESS = true;
	private ["_carrier","_object"];
	
	_carrier = _this select 0;
	_object = _carrier getVariable "LOG_heliporte";
	_carrier setVariable ["LOG_heliporte", objNull, true];
	_object setVariable ["LOG_moves_by", objNull, true];
	[_object] call LOG_FNCT_DETACH_AND_SAVE;
	format [localize "STR_LOG_DROPPED", getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;
	LOG_INPROGRESS = false;
	
	PVDZE_veh_Lock = [_object,false];
	_time = diag_tickTime;
										
	if (local _object) then {
		PVDZE_veh_Lock call local_lockUnlock;
	} else {
		publicVariable "PVDZE_veh_Lock";
		waitUntil {uiSleep 0.1;(!locked _object or (diag_tickTime - _time > 4))};
	};	
};
