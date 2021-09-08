uiSleep 0.1;
private ["_known","_list","_count","_i","_object","_typeOf"];

_known = [];
while {1==1} do {
	if !(isNull player) then {
		_list = ((position player) nearEntities [["LandVehicle","Air"], 80]) - _known;
		_count = count _list;
		if (_count > 0) then {
			for [{_i = 0}, {_i < _count}, {_i = _i + 1}] do {
				_object = _list select _i;
				_typeOf = typeOf _object;
				if ((_object isKindOf "LandVehicle" || {_object isKindOf "Air"}) && {!(_typeOf in LOG_BLACKLIST)}) then {
					[_object] spawn LOG_OBJ_INIT;
				};
				if (_object isKindOf "Helicopter" && !(_object isKindOf "AH6_Base_EP1") && !(_object isKindOf "pook_H13_base") && !(_object isKindOf "CSJ_GyroC")) then {
					[_object] spawn LOG_LIFT_INIT;
				};
				if (_object isKindOf "Car") then {
					[_object] spawn LOG_TOW_INIT;
				};
				if (_typeOf in LOG_CFG_CANLIFT_Big) then {
					[_object] spawn LOG_LIFT_INIT;
				};
				uiSleep (18/_count);
			};
			_known = _known + _list;
		} else {
			uiSleep 18;
		};
	} else {
		uiSleep 2;
	};
};