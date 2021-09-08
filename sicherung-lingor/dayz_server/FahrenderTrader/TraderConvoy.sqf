//Trader convoy Script by Schalldampfer 2017/6/2
private ["_typeCar","_typeDriver","_typeCargo","_StayTime","_TradePosition",
"_spawn_pos","_groupSide","_unitGroup","_vehicle","_driver","_turretCount","_cargo","_Traders",
"_pos_wp","_wp","_msg","_out",
"_objTrader","_objTr","_pos"
];
if (!isServer) exitWith{};
////////////////////////////////////////////////////////
//Config//
_typeCar = "HMMWV_Ambulance"; //The convoy vehicle
_typeDriver = "UN_CDF_Soldier_Pilot_EP1"; // Vehicle crew
_typeCargo = ["Profiteer1","RU_Citizen4","Dr_Hladik_EP1","Villager1"]; //Array of trader units
_StayTime = 1200; //How long they open trader city in seconds
_TradePosition = [ //Where they open trader city
[2668.1,6860.87, 0],//Aircraft Trader
[1151.39,5768.83,0],//Pista
[3672.86,2099.85,0],//Calamar
[653.548,1030.14,0],//Mercardio
[6902.99,4336.72,0],//Sanvigado
[8824.31,7564.21,0]//Conoteta
];

////////////////////////////////////////////////////
//Variables//
DZTR_TraderInMove = true;
if (isNil "wai_radio_announce") then {wai_radio_announce = false;};
//Spawn traders//
_spawn_pos = [getMarkerPos 'center',0,((getMarkerSize "center") select 1) / 2,20,0,0.2,0] call BIS_fnc_findSafePos;
 
//create group
_groupSide = createCenter civilian;
_unitGroup = createGroup _groupSide;
//spawn Car
_vehicle = createVehicle [_typeCar, _spawn_pos, [], 0, "NONE"];
_vehicle setFuel 1;
_vehicle setVehicleAmmo 1;
_vehicle engineOn true;
_vehicle setVariable ["unitGroup",_unitGroup];
_vehicle setVariable ["ObjectID","1",true];
_vehicle setVariable ["CharacterID","0",true];
_vehicle allowDamage false;
_vehicle removeAllEventHandlers "handleDamage";//
_vehicle addEventHandler ["handleDamage", {false}];//
_vehicle setcaptive true;
clearWeaponCargoGlobal _vehicle;
clearMagazineCargoGlobal _vehicle;
if (isNil "dayz_serverObjectMonitor") then {dayz_serverObjectMonitor = [];};
dayz_serverObjectMonitor set [count dayz_serverObjectMonitor,_vehicle];
_vehicle lock false;
diag_log format["TraderConvoy: Spawned %1 %2",_typeCar,_vehicle];
//spawn driver
_driver = _unitGroup createUnit [_typeDriver, _spawn_pos, [], 1, "NONE"];
[_driver] joinSilent _unitGroup;
removeAllItems _driver;
removeAllWeapons _driver;
_driver disableAI "AUTOTARGET";
_driver disableAI "TARGET";
_driver setBehaviour "CARELESS";
_driver allowDamage false;
_driver removeAllEventHandlers "handleDamage";//
_driver addEventHandler ["handleDamage", { false }];//
_driver setcaptive true;
if (!(_driver hasWeapon "NVGoggles")) then {
 _driver addweapon "NVGoggles";
};
_driver setVariable ["isDriver",true];
_driver setVariable ["bodyName",(name _driver)];
_unitGroup selectLeader _driver;
_driver assignAsDriver _vehicle;
//_driver moveInDriver _vehicle;
diag_log format["TraderConvoy: Spawned %1 %2 as driver",_typeDriver, name _driver];
//spawn cargo
_Traders = [];
_i = 0;
{
 _cargo = _unitGroup createUnit [_x, _spawn_pos, [], 1, "NONE"];
 //_cargo = createAgent [_x, [0,0,0], [], 1, "NONE"];
 [_cargo] joinSilent _unitGroup;
 _cargo setVariable ["bodyName",(name _cargo)];
 removeAllItems _cargo;
 removeAllWeapons _cargo;
 _cargo disableAI "AUTOTARGET";
 _cargo disableAI "TARGET";
 _cargo setBehaviour "CARELESS";
 _cargo setCombatMode "BLUE";
 _cargo allowDamage false;
 _cargo removeAllEventHandlers "handleDamage";//
 _cargo addEventHandler ["handleDamage", { false }];//
 _cargo setcaptive true;
 if (!(_cargo hasWeapon "NVGoggles")) then {
  _cargo addweapon "NVGoggles";
 };
 _cargo assignAsCargo _vehicle;
 //_cargo moveInCargo _vehicle;
 diag_log format["TraderConvoy: Spawned a Trader %1 %2",_x, name _cargo];
 _Traders set[count _Traders,_cargo];
 _i = _i + 1;
} foreach _typeCargo;
//Set group status
_unitGroup setBehaviour "CARELESS";
_unitGroup setCombatMode "BLUE";
(units _unitGroup) allowGetIn true;//
(units _unitGroup) orderGetIn true;//
_pos_wp = _TradePosition select 0;
{if ((_pos_wp distance _vehicle) > (_x distance _vehicle)) then {_pos_wp = _x;};} foreach _TradePosition;
diag_log format["TraderConvoy: %1",_Traders];
 
//Monitor//
[_vehicle,_driver] spawn {
 private["_vehicle","_driver","_marker"];
 _vehicle  = _this select 0;
 _driver = _this select 1;
 while {true} do {
  //Refuel,Repair,Reassign
  if (fuel _vehicle < 0.2) then { _vehicle setfuel 1; };
  if (damage _vehicle > 0.3)then{
   _vehicle setDamage 0;
  };
  _vehicle setVectorUp surfaceNormal position _vehicle;
  if(driver _vehicle != _driver) then {
   moveOut driver _vehicle;//
   _driver assignAsDriver _vehicle;
   _driver moveInDriver _vehicle;
  };
  //Create Marker
  _marker = createMarker ["TraderConvoy", getPos _vehicle];
  _marker setMarkerColor "ColorBlue";
  _marker setMarkerText "Trader Convoy";
  if (!DZTR_TraderInMove) then { // Deployed
   _marker setMarkerType "mil_circle";
   sleep 25;
  } else { // Convoy
   _marker setMarkerType "mil_dot";
   sleep 10;
  };
  deleteMarker _marker;
 };
};
///////////////////////////////////////////////////////////////////////////////////
//Start Convoy//
while {true} do {
 //Search next city//
 if (isNil "_pos_wp") then {_pos_wp = _TradePosition call BIS_fnc_selectRandom;};
 while {_pos_wp distance _vehicle < 500} do {
  _pos_wp = _TradePosition call BIS_fnc_selectRandom;
 };
 _pos_wp = [_pos_wp,0,150,10,0,1.0,0] call BIS_fnc_findSafePos; //select safe position
 
 //Move//
 //set waypoint
 diag_log ("TraderConvoy: Adding waypoints");
 _wp = _unitgroup addWaypoint [_pos_wp,0];
 _wp setWaypointType "MOVE";
 _wp setWaypointBehaviour "CARELESS";
 _wp setWaypointCombatMode "BLUE";
 _unitgroup setCurrentWaypoint [_unitgroup, 0];
 
 //call

 diag_log format["TraderConvoy: Moving to %2 %1",_pos_wp , mapGridPosition _pos_wp];
 _msg = format["[Trader Convoy] The convoy is moving to %1",mapGridPosition _pos_wp];
 if (wai_radio_announce) then {
  RemoteMessage = ["radio",_msg];
  publicVariable "RemoteMessage";
 } else {
  [nil,nil,rTitleText,_msg,"PLAIN",10] call RE;
 };

 
 //Wait for arrival //
 waitUntil {sleep 10;(_vehicle distance _pos_wp < 25)};
 diag_log ("TraderConvoy: Trader has arrived");

 //Deploy Trader//
 //get out
 _vehicle engineOn false;
 _vehicle lock false; //unlock car
 _Traders orderGetIn false;
 _Traders allowGetIn false;
 DZTR_TraderInMove = false;
 sleep 5;
 diag_log ("TraderConvoy: Now lock vehicle");
 {moveOut _x;} forEach (crew _vehicle);
 _driver assignAsDriver _vehicle;
 _driver moveInDriver _vehicle;
 sleep 0.1;
 _vehicle engineOn false;
 _vehicle lock true; //lock car
 //deploy things
 _objTrader = [];
 _objTr = objNull;
 //Info board
 _objTr = createVehicle ["Info_Board_EP1", _pos_wp, [], 0, "NONE"];
 _objTr setDir (random 360);
 _objTrader set [count _objTrader, _objTr];
 //Light pole
 _objTr = createVehicle ["ASC_EU_LHVOld", getpos _vehicle, [], 0, "NONE"];
 _objTr setDir (random 360);
 _objTrader set [count _objTrader, _objTr];
 _objTr = createVehicle ["Misc_cargo_cont_net1", getpos (_Traders select 0), [], 0, "NONE"];
 _objTr setDir (random 360);
 _objTrader set [count _objTrader, _objTr];
 _objTr = createVehicle ["Pile_of_wood", getpos (_Traders select 0), [], 0, "NONE"];
 _objTr setDir (random 360);
 _objTrader set [count _objTrader, _objTr];
 //Walls
 for "_i" from 1 to 12 do {
  _objTr = createVehicle ["Misc_concrete_High",
   [((getpos _vehicle) select 0)+10*cos(_i*30),
   ((getpos _vehicle) select 1)+10*sin(_i*30),
   0],[], 0, "NONE"];
  _objTr setDir (_i*30 + 90);
  _objTrader set [count _objTrader, _objTr];
 };
 //Helipad
 if (true) then {
  _pos = [_pos_wp,10,40,4,0,2000,0] call BIS_fnc_findSafePos;
  _objTr = createVehicle ["HeliHCivil", _pos, [], 0, "NONE"];
  _objTrader set [count _objTrader, _objTr];
 };
 //call
 _msg = format["[Trader Convoy] The convoy has opened a trader city at %1",mapGridPosition _vehicle];
 if (wai_radio_announce) then {
  RemoteMessage = ["radio",_msg];
  publicVariable "RemoteMessage";
 } else {
  [nil,nil,rTitleText,_msg,"PLAIN",10] call RE;
 };

 //Wait//
 sleep _StayTime;

 //Finish Trader//
 //call
 diag_log format["TraderConvoy: Leaving %2 %1",_pos_wp , mapGridPosition _vehicle];
 _msg = format["[Trader Convoy] The trader convoy is leaving %1",mapGridPosition _vehicle];
 if (wai_radio_announce) then {
  RemoteMessage = ["nradio",_msg];
  publicVariable "RemoteMessage";
 } else {
  [nil,nil,rTitleText,_msg,"PLAIN",10] call RE;
 };
 
 //delete things
 {deleteVehicle _x;} foreach _objTrader;

 //get in
 DZTR_TraderInMove = true;
 _vehicle lock false; //unlock
 _driver action ["Eject", _vehicle];// eject once
 _driver assignAsDriver _vehicle;
 {_x assignAsCargo _vehicle;} foreach _Traders;
 (units _unitGroup) allowGetIn true;
 (units _unitGroup) orderGetIn true;
 
 //check crews in and lock
 waitUntil {(_vehicle emptyPositions "DRIVER" == 0)}; // Wait until driver gets inside vehicle
 {
  if (!(_x in crew _vehicle)) then {
   _x moveInCargo _vehicle;
  };
 } foreach _Traders;
 diag_log ("TraderConvoy: Everyone's in");
 _vehicle lock true; //lock
 _vehicle engineOn true;
};
/////////////////////////////////////////////////////////////////////////////////////////