LOG_READY = false;
call compile preprocessFileLineNumbers "scripts\logistic\compiles.sqf";
waitUntil {uiSleep 1;LOG_READY};
[] spawn MONI_OBJECT;
uiSleep 0.1;
[] spawn MONI_ACTION;
