local _veh = _this;
local _gear = _veh getVariable ["lastInventory", []];

if (isNil "_gear" || {(count _gear) < 1}) exitwith {};

local _charID = _veh getVariable ["CharacterID","0"];
local _objectID = _veh getVariable ["ObjectID","0"];
local _objectUID = _veh getVariable ["ObjectUID","0"];

/*
Revamped instructions by Ree
select 0 = The Amount of Loot Piles around destroyed vehicles ("Default: 2") out of Max amount ___?  "Max Safe Amount"
select 1 =  Max additional loot piles On top of select 1 loot Piles  ("Default: 5")  out of Max amount ___?  "Max Safe Amount"
select 2 =  Radius around crash site to drop loot ("Default: 5")m out of Max amount ___?  "Max Safe Amount"
select 3 = Chance of gear being destroyed (Between 0-1, Ex: 0 = Never lost, 0.5 = Half lost, 1 = All lost)
Default: DZE_crashLootConfig = [true,2,5,5,0];
*/

local _DZE_crashLootConfig = [2,1,7,0.5];
local _guaranteedLoot = _DZE_crashLootConfig select 0;
local _randomizedLoot = _DZE_crashLootConfig select 1;
local _radius = _DZE_crashLootConfig select 2;
local _chance = _DZE_crashLootConfig select 3;
local _crashPiles = [];

//Wait for vehicle to stop moving
uisleep 1;
local _count = 0;

while {((speed _veh) > 0.1) && (_count <= 20)} do{
	uisleep 0.1;
	_count = _count + 0.1;
};

//Spawn the loot
diag_log format["[O9 Server]: server_crashLoot - Destroyed vehicle %1, charID %2, objID %3, objUID %4",typeof _veh,_charID,_objectID,_objectUID];
diag_log format["[O9 Server]: server_crashLoot - Gear: %1",_gear];

local _pos = getPosATL _veh;
local _num = round(random _randomizedLoot) + _guaranteedLoot;

for "_i" from 1 to _num do {
	local _temp = createVehicle ["WeaponHolder", [_pos select 0, _pos select 1, 0], [], _radius, "CAN_COLLIDE"];
	_temp enableSimulation false;
	_crashPiles set [count _crashPiles, _temp];
};

//Add weapons
local _objWpnTypes = (_gear select 0) select 0;
local _objWpnQty = (_gear select 0) select 1;
local _countr = 0;
local _isOk = false;
local _crashPile = objNull;
local _element = 0;
local _rnd = 0;
{
	_isOK = isClass(configFile >> "CfgWeapons" >> _x);
	if (_isOK) then {
		_element = floor(random _num);
		_crashPile = _crashPiles select _element;
		for "_i" from 1 to (_objWpnQty select _countr) do {
			_rnd = random 1;
			if(_rnd >= _chance) then{
				_crashPile addWeaponCargoGlobal [_x,1];
			};
		};
	};
	_countr = _countr + 1;
} count _objWpnTypes;

//Add Magazines
_objWpnTypes = (_gear select 1) select 0;
_objWpnQty = (_gear select 1) select 1;
_countr = 0;
{
	_isOK = isClass(configFile >> "CfgMagazines" >> _x);
	if (_isOK) then {
		_element = floor(random _num);
		_crashPile = _crashPiles select _element;
		for "_i" from 1 to (_objWpnQty select _countr) do {
			_rnd = random 1;
			if(_rnd >= _chance) then{
				_crashPile addMagazineCargoGlobal [_x,1];
			};
		};
	};
	_countr = _countr + 1;
} count _objWpnTypes;

//Add Backpacks
_objWpnTypes = (_gear select 2) select 0;
_objWpnQty = (_gear select 2) select 1;
_countr = 0;
{
	_isOK = isClass(configFile >> "CfgVehicles" >> _x);
	if (_isOK) then {
		_element = floor(random _num);
		_crashPile = _crashPiles select _element;
		for "_i" from 1 to (_objWpnQty select _countr) do {
			_rnd = random 1;
			if(_rnd >= _chance) then{
				_crashPile addBackpackCargoGlobal [_x,1];
			};
		};
	};
	_countr = _countr + 1;
} count _objWpnTypes;
