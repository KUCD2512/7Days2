[
	/******************Bandit*******************/
	["GUE_Commander",[2847.86, 9258.80,0],-35.77],
	/***************** Bandit Waffen*****************/
	//["Ins_Woodlander3",[7115.72,4609.01,0.576435],273.014],
	
	/************** Hero Waffen Fahrzeuge*************/
	// Hero Fahrzeuge und Waffen
	["FR_AC",[4682.89, 4098.08,0],177.9],
	// Hero Waffen
	//["US_Delta_Force_AR_EP1",[1089.45,7181.02,0.00150633],102.053],
	
	
	/****************Scharzmarkt***********************/
	["GUE_Woodlander2",[3425.58,5552.41,0],100.242],//Schwarzmarkt

	/******************Calamar************************/
	//Weapons
	["RU_Citizen4",[3737.9,2062.98,0],48.8539],
	//Ammunition
	["Profiteer1",[3735.06,2069.2,0],104.455],
	//General Store
	["Rita_Ensler_EP1",[3743.45,2057.59,0],40.4898],
	//Medical Supplies
	["Dr_Hladik_EP1",[3784.24,2061.44,0],262.589],
	//Building/Parts
	["Worker2",[3771.5,2046.6,0],342.974],
	//Vehicles
	["Villager1",[3741.22,2075.78,0],136.149],
	/***********************************************/
	/******************El Villon************************/
	//Weapons
	["CIV_EuroMan01_EP1",[7628.64, 2090.11,0],-203],
	//Ammunition
	["CIV_EuroMan02_EP1",[7631.88, 2091.27,0],-203],
	//General Store
	["RU_WorkWoman5",[7646.99, 2077,0],-28.16],
	//Medical Supplies
	["Doctor",[7618.89, 2069.66,0],23.64],
	//Building/Parts		
	["Worker1",[7639.27, 2072.98,0],-20.21],
	//Vehicles
	["TK_CIV_Worker02_EP1",[7666.03, 2100.46,0],-459.89],
	/***********************************************/
	/******************San Isabel************************/
	//Weapons
	["Rocker4",[5210.57, 7685.411,0],-45.77],
	//Ammunition
	["RU_Citizen3",[5207.96, 7682.50,0],-45.77],
	//General Store
	["RU_WorkWoman1",[5168.5, 7717.6,0.57],130.60],
	//Medical Supplies
	["Dr_Annie_Baker_EP1",[5186, 7715.8,0.05],221.05],
	//Building/Parts	
	["Worker3",[5201.7, 7673.89,0],-47.61],
	//Vehicles
	["TK_CIV_Worker01_EP1",[5163.4, 7696.9,0],-271.42],
	/***********************************************/
	//Aircraft Dealer
	["RU_Pilot",[3019.19, 7141.56,0],261.77],	
	//Boat Vendor
	["RU_Villager3",[1426.07, 1173.74,0],0],
	//Boat Vendor
	["HouseWife1",[9068.4, 8676.99,0],-197.44],	
	//Wholesaler
	["Profiteer2",[1431.42, 1173.83,0],0],
	//Wholesaler
	["Profiteer3",[9082.1, 8675.91,0],256.14],
	//Lotto Trader	
    ["Hooker4",[7621.25,2065.76,0.00143862],26.7733], // El Villon
    ["Hooker4",[3773.67,2077,0.00143814],262.016], // Calamar
    ["Hooker4",[5180.7,7717.37,0.00143862],159.38] // San Isabel
    
    /*********Gold Bücher Kleidung*********/
    // Gold Diamanten
	//["Soldier_Bodyguard_AA12_PMC",[3771.5,2046.6,0.00143862],342.974],
	// KLeindung
	//["CZ_Special_Forces_GL_DES_EP1",[3743.45,2057.59,0.00143862],40.4898],
	//Bücher Hanf
	//["FR_OHara",[3741.22,2075.78,0.00143862],136.149]

] call server_spawnTraders;

// Bankers
if (Z_singleCurrency && {Z_globalBanking && Z_globalBankingTraders}) then {
	[
		["Functionary1_EP1",[5168.35,7707.74,0.00143909],128.441],
		["Functionary1_EP1",[7623.41,2065.48,0.00143909],7.27719],
		["Functionary1_EP1",[3755.19,2049.62,0],39.8555] // Calamar
	] call server_spawnTraders;
};
