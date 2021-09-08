if (LOG_INPROGRESS) then {
	localize "STR_LOG_INPROGRESS" call dayz_rollingMessages;
} else {
	private ["_object", "_tug", "_finished", "_plotfriend", "_player", "_uid", "_friends", "_buldingpresent", "_name", "_prefix", "_players", "_pos", "_vehicles", "_posobject", "_posTug"];
	
	LOG_INPROGRESS = true;
	_object = _this select 0;
	_tug = _object getVariable "LOG_moves_by";
	if (_tug isKindOf "LandVehicle") then {
		[player,"repair",0,false,20] call dayz_zombieSpeak;
		[player,20,true,(getPosATL player)] spawn player_alertZombies;
		_finished = ["Medic",1] call fn_loopAction;
					
		if (_finished) then {					
			_posobject = getPosATL _object;
			if (_posobject distance player > 10) exitwith {
				systemchat localize "STR_LOG_UNTOWED_TOO_FAR";
			};
			["Working",0,[1,10,10,1]] call dayz_NutritionSystem;
			_tug setVariable ["LOG_trailer", objNull, true];
			_object setVariable ["LOG_moves_by", objNull, true];
			_posTug = getpos _tug;
			[_object,_posTug] call LOG_FNCT_DETACH_AND_SAVE;
			format [localize "STR_LOG_UNTOWED", getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;	
			
			PVDZE_veh_Lock = [_object,false];
			_time = diag_tickTime;
										
			if (local _object) then {
				PVDZE_veh_Lock call local_lockUnlock;
			} else {
				publicVariable "PVDZE_veh_Lock";
				//Wait for lock status to update over network (can take up to a few seconds)
				waitUntil {uiSleep 0.1;(!locked _object or (diag_tickTime - _time > 4))};
			};
		} else {
			localize "STR_ACTION_CANCELED" call dayz_rollingMessages;
		};
	} else {
		localize "STR_LOG_IMPOSSIBLE_VEHICLE" call dayz_rollingMessages;
	};
	LOG_INPROGRESS = false;
};
