if (isServer) then {
	diag_log "Loading custom server compiles";
};

if (!isDedicated) then {
	diag_log "Loading custom client compiles";
	FUN_LocatePlot = compile preprocessFileLineNumbers "scripts\locate_plot\locate_plot.sqf";
	player_switchModel = compile preprocessFileLineNumbers "dayz_code\compile\player_switchModel.sqf";
	fnc_usec_selfActions = compile preprocessFileLineNumbers "dayz_code\compile\fn_selfActions.sqf";
	DZ_KeyDown_EH = compile preprocessFileLineNumbers "dayz_code\compile\keyboard.sqf";
};