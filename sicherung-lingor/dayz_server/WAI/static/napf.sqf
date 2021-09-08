//Custom Spawns file//

// These custom spawns are for use in static mission locations. You can set markers in mission.sqm if you want them.

/*
Custom group spawns Eg.

[
	[953.237,4486.48,0.001],		// Position
	4,								// Number Of units
	"Random",						// Skill level of unit (easy, medium, hard, extreme, Random)
	"Random", or ["Random","at"],	// Primary gun set number or gun and rocket launcher. Syntax is "Random", for gun only or ["Random","AT"], for gun and launcher
	4,								// Number of magazines
	"Random",						// Backpack classname, use "Random" or classname here
	"Random",						// Skin classname, use "Random" or classname here
	"Random",						// Gearset number. "Random" for random gear set
	"Bandit"						// AI Type, "Hero" or "Bandit".
] call spawn_group;

Place your custom group spawns below
*/
[[18463.6,2345.86,0.00143433],10,"extreme","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
[[18511.6,2404.65,0.00143433],10,"extreme","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
//[[18546.4,2450.24,0.00143433],10,"extreme","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
//[[18588.1,2500.66,0.00143433],10,"extreme","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
//Camp mitte
//[[10105.6,7558.46,0.00141907],2,"Random","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
//Camp hero
//[[5099.91,4454.84,0.00151062],2,"Random","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
//Camp beim Air Trader
//[[14293.7,16971.8,0.00480843],2,"Random","Random",6,"Random","Random","Random","Bandit"] call spawn_group;
/*
Custom static weapon spawns Eg. (with mutiple positions)

[
	[								// Position(s) (can be multiple)
		[911.21,4532.76,2.62],
		[921.21,4542.76,2.62]
	],
	"M2StaticMG",					// Classname of turret
	"easy",							// Skill level of unit (easy, medium, hard, extreme, Random)
	"Bandit2_DZ",					// Skin classname, use "Random" or classname here
	"Bandit",						// AI Type, "Hero" or "Bandit".
	"Random",						// Primary gun set number. "Random" for random weapon set
	2,								// Number of magazines
	"Random",						// Backpack classname, use "Random" or classname here
	"Random"						// Gearset classname, use "Random" or classname here
] call spawn_static;

Place your custom static weapon spawns below
*/
[[[18487.2,2334.81,9.01794],[18470.7,2315.03,6.54126]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",4,"Random","Random"] call spawn_static;
[[[18445.9,2357.92,0.00143433],[18436.7,2334,0.00143433]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",4,"Random","Random"] call spawn_static;
[[[18567.5,2436.03,13.0502],[18597.8,2480.8,0.00143433]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",4,"Random","Random"] call spawn_static;
[[[18568.8,2516.71,13.4685],[18518.3,2444.98,0.00143433]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",4,"Random","Random"] call spawn_static;
//[[[18535.3,2394.08,0.00143433],[18541.7,2400.47,0.00143433]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",4,"Random","Random"] call spawn_static;//Lootkiste
[[[18424,2339.98,0.0899811],[18480.7,2374.52,0.00143433]],"M2StaticMG","extreme","Bandit2_DZ","Bandit","Random",4,"Random","Random"] call spawn_static;
/*
Custom Chopper Patrol spawn Eg.

[
	[725.391,4526.06,0],			// Position to patrol
	2000,							// Radius of patrol
	10,								// Number of waypoints to give
	"UH1H_DZ",						// Classname of vehicle (make sure it has driver and two gunners)
	"Random",						// Skill level of units (easy, medium, hard, extreme, Random)
	"Random",						// Skin classname, use "Random" or classname here
	"Bandit"						// AI Type, "Hero" or "Bandit".
] call heli_patrol;

Place your heli patrols below
*/





/* 
Custom Vehicle patrol spawns Eg. (Watch out they are stupid)

[
	[725.391,4526.06,0],			// Position to patrol
	[725.391,4526.06,0],			// Position to spawn at
	200,							// Radius of patrol
	10,								// Number of waypoints to give
	"HMMWV_Armored",				// Classname of vehicle (make sure it has driver and gunner)
	"Random",						// Skill level of units (easy, medium, hard, extreme, Random)
	"Random",						// Skin classname, use "Random" or classname here
	"Bandit"						// AI Type, "Hero" or "Bandit".
] call vehicle_patrol;

Place your vehicle patrols below this line
*/
/*
[
		[18413.2,2293.8,0],				// Koordinate an der patrouilliert werden sollCoords: [18413.2,2293.8,0.00143433] - Direction: 45.2442
		[18138.2,1981.86,0],				// Koordinate an der Fahrzeug spawned, von dort fährt es dann zur PatrouillenkoordinateCoords: [18138.2,1981.86,0.00143433] - Direction: 43.5129
		300,								// Radius in Meter um die Patruillenkoordinate
		10,									// Wieviele Wegpunkte sollen innerhalb des Radius abgefahren werden?
		"ArmoredSUV_PMC_DZ",					// Classname des Fahrzeuges (MUSS mindestens einen Fahrer und einen Schützen haben!)ArmoredSUV_PMC_DZ
		"extreme",							// Skill level der AI (easy, medium, hard, extreme, Random)
		"Bandit2_DZ",							// Skin Classname, "Random" für Zufall oder gewünschten Classname eintragen
		"Bandit"							// AI Type, "Hero" oder "Bandit".
	] call vehicle_patrol;
*/

/* 
Custom Boat patrol spawns

[
	[725.391,4526.06,0],			// Position to patrol
	[725.391,4526.06,0],			// Position to spawn at
	150,							// Radius of patrol. Your spawn point should be at least this distance from shore.
	10,								// Number of waypoints to give
	"RHIB",							// Classname of armed boat (make sure it has driver and gunner)
	"Random",						// Skill level of units (easy, medium, hard, extreme, Random)
	"Random",						// Skin classname, use "Random" or classname here
	"Bandit"						// AI Type, "Hero" or "Bandit".
] call vehicle_patrol;

Place your boat patrols below this line
*/





/*
Paradropped unit custom spawn Eg.

[
	[911.21545,4532.7612,2.6292224],	// Position that units will be dropped by
	400,								// Radius from drop position a player has to be to spawn chopper
	"Mi17_DZ",							// Classname of chopper (Make sure it has 2 gunner seats!)
	"North",							// Direction of approach for the helicopter. Options: "North","South","East","West"
	[3000,4000],						// Random distance from the mission the helicopter should start. [min distance, max distance].
	150,								// Fly in height of the helicopter. Be careful that the height is not too low or the AI might die when they hit the ground
	1.0,								// Time in seconds between each deployed paratrooper. Higher number means paradropped AI will be more spread apart. Time of 0 means they all jump out rapidly.
	200,								// Distance from the mission the helicopter should start dropping paratroopers
	5,									// Number of units to be para dropped
	"Random",							// Skill level of units (easy, medium, hard, extreme, Random)
	"Random",	or ["Random","at"],		// Primary gun set number and rocket launcher. "Random" for random weapon set, "at" for anti-tank, "aa" for anti-air launcher
	4,									// Number of magazines
	"Random",							// Backpack classname, use "Random" or classname here
	"Bandit2_DZ",						// Skin classname, use "Random" or classname here
	"Random",							// Gearset number. "Random" for random gear set.
	"Bandit",							// AI Type, "Hero" or "Bandit".
	true								// true: Aircraft will stay at position and fight. false: Heli will leave if not under fire. 
] spawn heli_para;

Place your paradrop spawns under this line
*/
[
	[18509.7,2399.99,2.0292224],	// Position that units will be dropped by Coords:
	200,								// Radius from drop position a player has to be to spawn chopper
	"Mi17_DZ",							// Classname of chopper (Make sure it has 2 gunner seats!)
	"North",							// Direction of approach for the helicopter. Options: "North","South","East","West"
	[3000,4000],						// Random distance from the mission the helicopter should start. [min distance, max distance].
	150,								// Fly in height of the helicopter. Be careful that the height is not too low or the AI might die when they hit the ground
	0.5,								// Time in seconds between each deployed paratrooper. Higher number means paradropped AI will be more spread apart. Time of 0 means they all jump out rapidly.
	200,								// Distance from the mission the helicopter should start dropping paratroopers
	12,									// Number of units to be para dropped
	"extreme",							// Skill level of units (easy, medium, hard, extreme, Random)
	"Random",		// Primary gun set number and rocket launcher. "Random" for random weapon set, "at" for anti-tank, "aa" for anti-air launcher
	6,									// Number of magazines
	"Random",							// Backpack classname, use "Random" or classname here
	"Bandit2_DZ",						// Skin classname, use "Random" or classname here
	"Random",							// Gearset number. "Random" for random gear set.
	"Bandit",							// AI Type, "Hero" or "Bandit".
	true								// true: Aircraft will stay at position and fight. false: Heli will leave if not under fire. 
] spawn heli_para;


/* Custom Crate Spawns

_position = [911.21545,4532.7612,0]; // Position of the crate

_loot = 
[
	0, // Max number of long guns OR [MAX number of long guns,gun_array]
	0, // Max number of tools OR [MAX number of tools,tool_array]
	0, // Max number of items OR [MAX number of items,item_array]
	0, // Max number of pistols OR [MAX number of pistol,pistol_array]
	0 // Max number of backpacks OR [MAX number of backpacks,backpack_array]
];

// Spawn one crate - Best option for static positions because offsets are not needed.
[[
	[_loot,crates_large,[0,0]] // [loot variable, crate array, 2d offsets]
],_position] call wai_spawnCrate;


// Multiple crate spawning option
[[
	[_loot,"USVehicleBox",[0,0]], // [loot variable, crate classname, 2d offsets]
	[[0,0,[3,crate_items_crop_raider],0,0],crates_large,[0,0,0]], // [loot variable, crate array, 3d offsets]
	[[0,0,0,0,0],crates_large,[0,0],60] // [loot array, crate array, 2d offsets, optional direction]
],_position] call wai_spawnCrate;

Place your crate spawns under this line
*/


diag_log "WAI: Static mission loaded";
