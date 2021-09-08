if (LOG_INPROGRESS) then {
	localize "STR_LOG_INPROGRESS" call dayz_rollingMessages;
} else {
	LOG_INPROGRESS = true;
	private ["_object", "_tug", "_plotfriend", "_player", "_uid", "_friends", "_buldingpresent", "_name", "_prefix", "_players", "_pos", "_vehicles", "_finished"];
	
	_object = LOG_OBJECT_SELECTION;
	_tug = _this select 0;
	
	if (!(isNull _object) && {alive _object} && !(_object getVariable "LOG_disabled")) then {
		if (isNull (_object getVariable "LOG_moves_by") && (isNull (_object getVariable "LOG_moves_by") || (!alive (_object getVariable "LOG_moves_by")))) then {
			if ( _object distance _tug <= 20 ) then {	
			
				[player,"repair",0,false,20] call dayz_zombieSpeak;
				[player,20,true,(getPosATL player)] spawn player_alertZombies;
				_finished = ["Medic",1] call fn_loopAction;
					
				if (_finished) then {
					if (isPlayer _object) exitwith {localize "STR_ACTION_CANCELED" call dayz_rollingMessages;LOG_INPROGRESS = false;};
					
					["Working",0,[1,10,10,1]] call dayz_NutritionSystem;
					_tug setVariable ["LOG_trailer", _object, true];
					
					_object setVariable ["LOG_moves_by", _tug, true];

					player attachTo [_tug, [ 
					(boundingBox _tug select 1 select 0),
					(boundingBox _tug select 0 select 1) + 2, 
					(boundingBox _tug select 0 select 2) - (boundingBox player select 0 select 2)]];
					
					player setDir 270;
					player setPos (getPos player);
					
				
					_object setVelocity [0,0,0];
					_object attachTo [ _tug, [
					0,
					(boundingBox _tug select 0 select 1) + (boundingBox _object select 0 select 1) - 1,
					(boundingBox _tug select 0 select 2) - (boundingBox _object select 0 select 2)
					]];
					
					LOG_OBJECT_SELECTION = objNull;
					detach player;					
					
					format [localize "STR_LOG_ATTACHED", getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;
					
					PVDZE_veh_Lock = [_object,true];
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
				format [localize " STR_LOG_TOO_FAR", getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;};
		} else {
			format [localize "STR_LOG_IN_TRANSIT", getText (configFile >> "CfgVehicles" >> (typeOf _object) >> "displayName")] call dayz_rollingMessages;};
	};
	LOG_INPROGRESS = false;
};
