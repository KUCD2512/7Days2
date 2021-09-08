
wai_blacklist = call {
    if (toLower worldName == "chernarus") exitWith {[
		[[0,16000,0],[1000,-0,0]],	// Left edge of map
        [[0,16000,0],[16000.0,14580.3,0]] // Top edge of map
    ];};
    if (toLower worldName == "napf") exitWith {[
		[[18477.9,2434.88,0],[18536,0,2398]], // Sector Süd Airfeld
		[[1143.67,4823.93,0],[1122.72,5047.94,0]] // Sector A
	];};
    [];
};

if (count wai_blacklist > 0) then {
	diag_log "WAI: blacklist Loaded";
} else {
	diag_log "WAI: You are on an unsupported map! No blacklist available.";
};