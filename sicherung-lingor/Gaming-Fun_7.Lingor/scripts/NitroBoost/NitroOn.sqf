local _vehicle = _this select 3; 

_vehicle removeAction s_player_nitrobooston;
s_player_nitrobooston = -1;

if (!NitroBoostOn) then {
	NitroBoostOn = true;	
} else {
	NitroBoostOn = false;
	NitroMessage = nil;
	NitroSound = nil;
};