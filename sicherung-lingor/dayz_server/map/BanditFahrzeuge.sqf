
_vehicle_36 = objNull;
if (true) then
{
  _this = createVehicle ["MAP_sara_Domek_sedy", [5062.1675, 1573.85, -0.31614065], [], 0, "CAN_COLLIDE"];
  _vehicle_36 = _this;
  _this setDir 21.484497;
  _this setVehicleInit "this setVectorUp [0,0,1]";
  _this setPos [5062.1675, 1573.85, -0.31614065];
};

_vehicle_83 = objNull;
if (true) then
{
  _this = createVehicle ["Billboard_Bandit_DZ", [5070.2637, 1539.1002], [], 0, "CAN_COLLIDE"];
  _vehicle_83 = _this;
  _this setDir -28.405758;
  _this setVehicleInit "this setVectorUp [0,0,1]";
  _this setPos [5070.2637, 1539.1002];
};

_vehicle_84 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Fire_barrel_burning", [5058.4854, 1574.9747, 9.5367432e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_84 = _this;
  _this setVehicleInit "this setVectorUp [0,0,1]";
  _this setPos [5058.4854, 1574.9747, 9.5367432e-006];
};

_vehicle_86 = objNull;
if (true) then
{
  _this = createVehicle ["Helipad_Civil_DZ", [5047.063, 1555.48, -5.7220459e-006], [], 0, "CAN_COLLIDE"];
  _vehicle_86 = _this;
  _this setPos [5047.063, 1555.48, -5.7220459e-006];
};

_vehicle_87 = objNull;
if (true) then
{
  _this = createVehicle ["Land_Table_EP1", [5062.9194, 1578.2057, 0.14472678], [], 0, "CAN_COLLIDE"];
  _vehicle_87 = _this;
  _this setDir 111.8233;
  _this setPos [5062.9194, 1578.2057, 0.14472678];
};

processInitCommands;

