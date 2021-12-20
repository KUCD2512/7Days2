//written by bomb with code based and heavily modified from BigEgg's Plot-Owner script
local _plots = entities "Plastic_Pole_EP1_DZ";

{
    local _friends = _x getVariable ["plotfriends", []];
    if ({(_x select 0) == (getPlayerUID player)} count _friends > 0) then {
        local _position = getPos _x;
        
        local _marker = createMarkerLocal [format ["plotMarker%1%2", (random 1), (random 1)],[_position select 0,_position select 1]];
        _marker setMarkerShapeLocal "ICON";
        _marker setMarkerTypeLocal "DOT";
        _marker setMarkerColorLocal "ColorPink";
        _marker setMarkerSizeLocal [1.0, 1.0];
        _marker setMarkerTextLocal format ["%1's Plot",toString ((_friends select 0) select 1)];
        
    };
} forEach _plots;

systemChat "Plot poles you have access to have been marked on the map";