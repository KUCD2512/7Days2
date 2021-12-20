if (LOG_INPROGRESS) then {
	localize "STR_LOG_INPROGRESS" call dayz_rollingMessages;
} else {
	LOG_INPROGRESS = true;
	private ["_heliporteur", "_object"];
	
	_heliporteur = _this select 0;
	_object = nearestObjects [(position _heliporteur),["Car","Air"],20];//["LandVehicle","Air","Ship"],20];
	_object = _object - [_heliporteur];	
	{if (locked _x) then {_object = _object - [_x]}} count _object;
	if (count _object > 0) then {
		_object = _object select 0;	
		if !(_object getVariable "LOG_disabled") then {
			if (isNull (_object getVariable "LOG_moves_by")) then {
				if (!isPlayer _object) then {	
					if (isNull (_object getVariable "LOG_moves_by") || (!alive (_object getVariable "LOG_moves_by"))) then {
						private ["_no_trailer", "_trailer"];
						
						_no_trailer = true;
						_trailer = _object getVariable "LOG_trailer";
						if !(isNil "_trailer") then {if !(isNull _trailer) then {_no_trailer = false;};};
						if (_no_trailer) then {
							_heliporteur setVariable ["LOG_heliporte", _object, true];
							_object setVariable ["LOG_moves_by", _heliporteur, true];
							_object attachTo [_heliporteur, [0,0,(boundingBox _heliporteur select 0 select 2) - (boundingBox _object select 0 select 2) - (getPos _heliporteur select 2) + 1.5]];
							format [localize "STR_LOG_ATTACHED",getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;
							
							PVDZE_veh_Lock = [_object,true];
							_time = diag_tickTime;
												
							if (local _object) then {
								PVDZE_veh_Lock call local_lockUnlock;
							} else {
								publicVariable "PVDZE_veh_Lock";
								waitUntil {uiSleep 0.1;(!locked _object or (diag_tickTime - _time > 4))};
							};
						} else {
							format [localize "STR_LOG_CANT_LIFT_TOWING",getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;};
					} else {
						format [localize "STR_LOG_CANT_LIFT_MOVING",getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;};	
				} else { 
					format [localize "STR_LOG_CANT_LIFT_PLAYER",getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;};
			} else { 
				format [localize "STR_LOG_ALREADY",getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;};
		};
	};
	LOG_INPROGRESS = false;
};
