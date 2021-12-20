if (dayz_actionInProgress) exitWith {localize 'str_player_actionslimit' call dayz_rollingMessages;};
dayz_actionInProgress = true;

local _vehicle = _this select 3;

player removeAction s_player_nitroInstall;
s_player_nitroInstall = -1;

local _hasNitro = _vehicle getVariable['hasNitro',0];
if (_hasNitro == 1) exitwith {dayz_actionInProgress = false; localize 'STR_NITRO_ALREADY_INSTALLED' call dayz_rollingMessages;};

local _tools = ['ItemToolbox'];
if !(['',_tools,'none'] call dze_requiredItemsCheck) exitWith {dayz_actionInProgress = false;};

local _item1 = 'ItemJerrycan';
local _item1Needed = 1;
local _item1Count = {_x == _item1} count magazines player;
local _item2 = 'ItemSodaRbull';
local _item2Needed = 1;
local _item2Count = {_x == _item2} count magazines player;

if (_item1Count < _item1Needed || _item2Count < _item2Needed) exitWith {
	dayz_actionInProgress = false;
	local _displayName1 = getText(configFile >> 'CfgMagazines' >> _item1 >> 'displayName');
	local _displayName2 = getText(configFile >> 'CfgMagazines' >> _item2 >> 'displayName');
	local _msg = format [localize 'STR_NITRO_NEEDED_ITEMS',_item1Needed,_displayName1,_item2Needed,_displayName2];
	_msg call dayz_rollingMessages;
	systemchat _msg;
};

[player,(getPosATL player),30,'repair'] spawn fnc_alertZombies;
local _finished = ['Medic',1] call fn_loopAction;
local _isOk = false;

if (_finished) then {
	local _neededitems = [[_item1,_item1Needed],[_item2,_item2Needed]];	
	_isOk = true;

	{
		local _items = _x;
		local _item = _items select 0;
		local _qty = _items select 1;
		local _nub = [player,_item,_qty] call BIS_fnc_invRemove;	
		if (_qty != _nub) exitWith {_isOk = false;};
	} foreach _neededitems;
	
	if (_isOk) then {	
		local _isFuelContainer1 = getText(configFile >> 'CfgMagazines' >> _item1 >> 'containerEmpty');
		if (_isFuelContainer1 != '') then {
			[player,_isFuelContainer1] call BIS_fnc_invAdd;
		};
		local _isFuelContainer2 = getText(configFile >> 'CfgMagazines' >> _item2 >> 'containerEmpty');
		if (_isFuelContainer2 != '') then {
			[player,_isFuelContainer2] call BIS_fnc_invAdd;
		};
		
		_vehicle setVariable['hasNitro',1,true];
		local _msg = localize 'STR_NITRO_INSTALLED_SUCCESS';
		systemChat _msg;
		_msg call dayz_rollingMessages;
	} else {
		localize 'STR_ACTION_CANCELED' call dayz_rollingMessages;
	};
} else {
	localize 'STR_ACTION_CANCELED' call dayz_rollingMessages;
};

dayz_actionInProgress = false;