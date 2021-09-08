LOG_CFG_ALLOW_CHAINING = false; 	/* allow chain towing  */
LOG_CFG_ALLOW_GETIN = false; 		/* allow player to get into a towed / lifted object  */
LOG_BLACKLIST = ["M240Nest_DZ"];

/*--------------------------------------------------------------------------------------------------------------
	LIST OF VEHICLES WHERE CAN TOW
---------------------------------------------------------------------------------------------------------------*/ 
/*
LOG_CFG_CANTOW = [
"Offroad_DSHKM_Gue","TT650_Civ","TT650_Ins","TT650_TK_CIV_EP1","M1030_US_DES_EP1","Old_moto_TK_Civ_EP1","S1203_TK_CIV_EP1"
,"S1203_ambulance_EP1","Skoda","Skoda_DZE1","Skoda_DZE2","Skoda_DZE3","Skoda_DZE4","SkodaBlue","SkodaBlue_DZE1","SkodaBlue_DZE2","SkodaBlue_DZE3","SkodaBlue_DZE4"
,"SkodaGreen","SkodaGreen_DZE1","SkodaGreen_DZE2","SkodaGreen_DZE3","SkodaGreen_DZE4","SkodaRed","SkodaRed_DZE1","SkodaRed_DZE2","SkodaRed_DZE3","SkodaRed_DZE4","VolhaLimo_TK_CIV_EP1"
,"VolhaLimo_TK_CIV_EP1_DZE1","VolhaLimo_TK_CIV_EP1_DZE2","VolhaLimo_TK_CIV_EP1_DZE3","VolhaLimo_TK_CIV_EP1_DZE4","Volha_1_TK_CIV_EP1","Volha_1_TK_CIV_EP1_DZE1","Volha_1_TK_CIV_EP1_DZE2"
,"Volha_1_TK_CIV_EP1_DZE3","Volha_1_TK_CIV_EP1_DZE4","Volha_2_TK_CIV_EP1","Volha_2_TK_CIV_EP1_DZE1","Volha_2_TK_CIV_EP1_DZE2","Volha_2_TK_CIV_EP1_DZE3","Volha_2_TK_CIV_EP1_DZE4"
,"VWGolf","VWGolf_DZE1","VWGolf_DZE2","VWGolf_DZE3","VWGolf_DZE4","car_hatchback","car_hatchback_DZE1","car_hatchback_DZE2","car_hatchback_DZE3","car_hatchback_DZE4"
,"car_sedan","car_sedan_DZE1","car_sedan_DZE2","car_sedan_DZE3","car_sedan_DZE4","GLT_M300_LT","GLT_M300_ST","Lada1","Lada1_DZE1","Lada1_DZE2","Lada1_DZE3","Lada1_DZE4"
,"Lada1_TK_CIV_EP1","Lada1_TK_CIV_EP1_DZE1","Lada1_TK_CIV_EP1_DZE2","Lada1_TK_CIV_EP1_DZE3","Lada1_TK_CIV_EP1_DZE4","Lada2","Lada2_DZE1","Lada2_DZE2","Lada2_DZE3","Lada2_DZE4"
,"Lada2_TK_CIV_EP1","Lada2_TK_CIV_EP1_DZE1","Lada2_TK_CIV_EP1_DZE2","Lada2_TK_CIV_EP1_DZE3","Lada2_TK_CIV_EP1_DZE4","LadaLM","LadaLM_DZE1","LadaLM_DZE2","LadaLM_DZE3"
,"LadaLM_DZE4","ori_vil_lada_2105_rust","ori_poldek","ori_poldek_black","ori_ZAZ968M","ori_taviander","ori_m3","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_UN_EP1","LandRover_CZ_EP1"
,"LandRover_TK_CIV_EP1","hilux1_civil_3_open_DZE","hilux1_civil_3_open_DZE1","hilux1_civil_3_open_DZE2","hilux1_civil_3_open_DZE3","hilux1_civil_3_open_DZE4","datsun1_civil_3_open_DZE"
,"datsun1_civil_3_open_DZE1","datsun1_civil_3_open_DZE2","datsun1_civil_3_open_DZE3","datsun1_civil_3_open_DZE4","hilux1_civil_1_open_DZE","hilux1_civil_1_open_DZE1"
,"hilux1_civil_1_open_DZE2","hilux1_civil_1_open_DZE3","hilux1_civil_1_open_DZE4","datsun1_civil_2_covered_DZE","datsun1_civil_2_covered_DZE1","datsun1_civil_2_covered_DZE2"
,"datsun1_civil_2_covered_DZE3","datsun1_civil_2_covered_DZE4","datsun1_civil_1_open_DZE","datsun1_civil_1_open_DZE1","datsun1_civil_1_open_DZE2","datsun1_civil_1_open_DZE3"
,"datsun1_civil_1_open_DZE4","hilux1_civil_2_covered_DZE","hilux1_civil_2_covered_DZE1","hilux1_civil_2_covered_DZE2","hilux1_civil_2_covered_DZE3","hilux1_civil_2_covered_DZE4"
,"SUV_TK_CIV_EP1","SUV_TK_CIV_EP1_DZE1","SUV_TK_CIV_EP1_DZE2","SUV_TK_CIV_EP1_DZE3","SUV_TK_CIV_EP1_DZE4","SUV_Blue","SUV_Blue_DZE1","SUV_Blue_DZE2","SUV_Blue_DZE3","SUV_Blue_DZE4"
,"SUV_Charcoal","SUV_Charcoal_DZE1","SUV_Charcoal_DZE2","SUV_Charcoal_DZE3"
,"SUV_Charcoal_DZE4","SUV_Green","SUV_Green_DZE1","SUV_Green_DZE2","SUV_Green_DZE3","SUV_Green_DZE4","SUV_Orange","SUV_Orange_DZE1","SUV_Orange_DZE2","SUV_Orange_DZE3"
,"SUV_Orange_DZE4","SUV_Pink","SUV_Pink_DZE1","SUV_Pink_DZE2","SUV_Pink_DZE3","SUV_Pink_DZE4","SUV_Red","SUV_Red_DZE1","SUV_Red_DZE2","SUV_Red_DZE3","SUV_Red_DZE4","SUV_Silver"
,"SUV_Silver_DZE1","SUV_Silver_DZE2","SUV_Silver_DZE3","SUV_Silver_DZE4","SUV_White","SUV_White_DZE1","SUV_White_DZE2","SUV_White_DZE3","SUV_White_DZE4","SUV_Yellow"
,"SUV_Yellow_DZE1","SUV_Yellow_DZE2","SUV_Yellow_DZE3","SUV_Yellow_DZE4","UralCivil_DZE","UralCivil2_DZE","Ural_TK_CIV_EP1","Ural_UN_EP1","V3S_Open_TK_CIV_EP1","Ikarus","Ikarus_TK_CIV_EP1","Tractor"
,"BAF_Offroad_D","BAF_Offroad_W","UAZ_CDF","UAZ_CDF_DZE1","UAZ_CDF_DZE2"
,"UAZ_CDF_DZE3","UAZ_CDF_DZE4","UAZ_INS","UAZ_INS_DZE1","UAZ_INS_DZE2","UAZ_INS_DZE3","UAZ_INS_DZE4","UAZ_RU","UAZ_RU_DZE1","UAZ_RU_DZE2","UAZ_RU_DZE3","UAZ_RU_DZE4"
,"UAZ_Unarmed_TK_EP1","UAZ_Unarmed_TK_EP1_DZE1","UAZ_Unarmed_TK_EP1_DZE2","UAZ_Unarmed_TK_EP1_DZE3","UAZ_Unarmed_TK_EP1_DZE4","SUV_Camo","SUV_Camo_DZE1","SUV_Camo_DZE2"
,"SUV_Camo_DZE3","SUV_Camo_DZE4","Ural_INS","UralOpen_INS","Ural_CDF","UralOpen_CDF","Kamaz_DZE","Kamaz_DZE1","Kamaz_DZE2","Kamaz_DZE3","Kamaz_DZE4","KamazOpen_DZE","KamazOpen_DZE1"
,"KamazOpen_DZE2","KamazOpen_DZE3","KamazOpen_DZE4","MTVR","MTVR_DES_EP1","V3S_Civ","V3S_Open_TK_EP1","V3S_TK_EP1_DZE","V3S_GUE_EP1_DZE","KamazRefuel_DZ","KamazRefuel_DZE1"
,"KamazRefuel_DZE2","KamazRefuel_DZE3","KamazRefuel_DZE4","MtvrRefuel_DES_EP1_DZ","MtvrRefuel_DZ","V3S_Refuel_TK_GUE_EP1_DZ","UralRefuel_TK_EP1_DZ","UralRefuel_CDF","UralRefuel_INS"
,"HMMWV_DZ","HMMWV_DES_EP1","HMMWV_M1035_DES_EP1","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","BTR40_TK_INS_EP1","BTR40_TK_GUE_EP1","Pickup_PK_TK_GUE_EP1_DZE"
,"Pickup_PK_TK_GUE_EP1_DZE1","Pickup_PK_TK_GUE_EP1_DZE2","Pickup_PK_TK_GUE_EP1_DZE3","Pickup_PK_TK_GUE_EP1_DZE4","Pickup_PK_GUE_DZE","Pickup_PK_GUE_DZE1","Pickup_PK_GUE_DZE2"
,"Pickup_PK_GUE_DZE3","Pickup_PK_GUE_DZE4","Pickup_PK_INS_DZE","Pickup_PK_INS_DZE1","Pickup_PK_INS_DZE2","Pickup_PK_INS_DZE3","Pickup_PK_INS_DZE4","HMMWV_Armored_DZ","GAZ_Vodnik_DZE"
,"BRDM2_HQ_TK_GUE_EP1_DZ","UAZ_MG_TK_EP1_DZE","UAZ_MG_CDF","UAZ_MG_INS","LandRover_MG_TK_EP1_DZE","BTR40_MG_TK_GUE_EP1","BTR40_MG_TK_INS_EP1","HMMWV_M2_DZ","HMMWV_M1151_M2_CZ_DES_EP1_DZE"
,"BAF_Jackal2_L2A1_D","BAF_Jackal2_L2A1_W","GAZ_Vodnik_MedEvac","ArmoredSUV_PMC_DZE","ArmoredSUV_PMC_DZE1","ArmoredSUV_PMC_DZE2","ArmoredSUV_PMC_DZE3","ArmoredSUV_PMC_DZE4"
,"Offroad_DSHKM_Gue_DZE","Offroad_DSHKM_Gue_DZE1","Offroad_DSHKM_Gue_DZE2","Offroad_DSHKM_Gue_DZE3","Offroad_DSHKM_Gue_DZE4",
"HMMWV_M998A2_SOV_DES_EP1_DZE","BTR60_TK_EP1","GAZ_Vodnik_HMG","BAF_Jackal2_GMG_D","BAF_Jackal2_GMG_W","BRDM2_CDF","LAV25_HQ_DZE","BTR90_HQ_DZE","M113Ambul_TK_EP1_DZ"
,"M113_TK_EP1_DZE","M113_UN_EP1_DZE","BMP2_Ambul_INS","BMP2_HQ_CDF","BMP2_HQ_INS","LandRover_Special_CZ_EP1_DZE","BRDM2_Gue","BRDM2_INS","HMMWV_M998_crows_M2_DES_EP1"
];*/

/*--------------------------------------------------------------------------------------------------------------
	LIST OF VEHICLES WHERE IS TOWABLE
---------------------------------------------------------------------------------------------------------------*/ 

//LOG_CFG_ISTOWABLE = LOG_CFG_CANTOW;


/*--------------------------------------------------------------------------------------------------------------
	LIST OF HELIS WHERE CAN LIFT
---------------------------------------------------------------------------------------------------------------*/ 
/*
LOG_CFG_CANLIFT = [
"BAF_Merlin_DZE"
,"CH53_DZE"
,"CH_47F_EP1_DZE"
,"CH_47F_BAF"
,"Mi17_DZE"
,"Mi17_TK_EP1_DZE"
,"Mi17_UN_CDF_EP1_DZE"
,"Mi17_CDF_DZE"
,"Mi171Sh_CZ_EP1_DZ"
,"Mi17_Civilian_DZ"
,"Mi17_medevac_CDF_DZ"
,"Mi17_medevac_Ins_DZ"
,"Mi17_medevac_RU_DZ"
,"UH1H_DZE"
,"UH1H_2_DZE"
,"MH60S_DZE"
,"UH60M_EP1_DZE"
,"UH60M_MEV_EP1_DZ"
,"UH1Y_DZE"
,"Ka60_PMC"
,"MV22_DZ"
];
*/
/*
LOG_CFG_CANTLIFT = [

];
*/
/*--------------------------------------------------------------------------------------------------------------
		LIST OF VEHICLES WHERE IS LIFTABLE
---------------------------------------------------------------------------------------------------------------*/ 
/*
LOG_CFG_ISLIFTABLE = [
"Offroad_DSHKM_Gue","TT650_Civ","TT650_Ins","TT650_TK_CIV_EP1","M1030_US_DES_EP1","Old_moto_TK_Civ_EP1","S1203_TK_CIV_EP1"
,"S1203_ambulance_EP1","Skoda","Skoda_DZE1","Skoda_DZE2","Skoda_DZE3","Skoda_DZE4","SkodaBlue","SkodaBlue_DZE1","SkodaBlue_DZE2","SkodaBlue_DZE3","SkodaBlue_DZE4"
,"SkodaGreen","SkodaGreen_DZE1","SkodaGreen_DZE2","SkodaGreen_DZE3","SkodaGreen_DZE4","SkodaRed","SkodaRed_DZE1","SkodaRed_DZE2","SkodaRed_DZE3","SkodaRed_DZE4","VolhaLimo_TK_CIV_EP1"
,"VolhaLimo_TK_CIV_EP1_DZE1","VolhaLimo_TK_CIV_EP1_DZE2","VolhaLimo_TK_CIV_EP1_DZE3","VolhaLimo_TK_CIV_EP1_DZE4","Volha_1_TK_CIV_EP1","Volha_1_TK_CIV_EP1_DZE1","Volha_1_TK_CIV_EP1_DZE2"
,"Volha_1_TK_CIV_EP1_DZE3","Volha_1_TK_CIV_EP1_DZE4","Volha_2_TK_CIV_EP1","Volha_2_TK_CIV_EP1_DZE1","Volha_2_TK_CIV_EP1_DZE2","Volha_2_TK_CIV_EP1_DZE3","Volha_2_TK_CIV_EP1_DZE4"
,"VWGolf","VWGolf_DZE1","VWGolf_DZE2","VWGolf_DZE3","VWGolf_DZE4","car_hatchback","car_hatchback_DZE1","car_hatchback_DZE2","car_hatchback_DZE3","car_hatchback_DZE4"
,"car_sedan","car_sedan_DZE1","car_sedan_DZE2","car_sedan_DZE3","car_sedan_DZE4","GLT_M300_LT","GLT_M300_ST","Lada1","Lada1_DZE1","Lada1_DZE2","Lada1_DZE3","Lada1_DZE4"
,"Lada1_TK_CIV_EP1","Lada1_TK_CIV_EP1_DZE1","Lada1_TK_CIV_EP1_DZE2","Lada1_TK_CIV_EP1_DZE3","Lada1_TK_CIV_EP1_DZE4","Lada2","Lada2_DZE1","Lada2_DZE2","Lada2_DZE3","Lada2_DZE4"
,"Lada2_TK_CIV_EP1","Lada2_TK_CIV_EP1_DZE1","Lada2_TK_CIV_EP1_DZE2","Lada2_TK_CIV_EP1_DZE3","Lada2_TK_CIV_EP1_DZE4","LadaLM","LadaLM_DZE1","LadaLM_DZE2","LadaLM_DZE3"
,"LadaLM_DZE4","ori_vil_lada_2105_rust","ori_poldek","ori_poldek_black","ori_ZAZ968M","ori_taviander","ori_m3","UAZ_Unarmed_TK_CIV_EP1","UAZ_Unarmed_UN_EP1","LandRover_CZ_EP1"
,"LandRover_TK_CIV_EP1","hilux1_civil_3_open_DZE","hilux1_civil_3_open_DZE1","hilux1_civil_3_open_DZE2","hilux1_civil_3_open_DZE3","hilux1_civil_3_open_DZE4","datsun1_civil_3_open_DZE"
,"datsun1_civil_3_open_DZE1","datsun1_civil_3_open_DZE2","datsun1_civil_3_open_DZE3","datsun1_civil_3_open_DZE4","hilux1_civil_1_open_DZE","hilux1_civil_1_open_DZE1"
,"hilux1_civil_1_open_DZE2","hilux1_civil_1_open_DZE3","hilux1_civil_1_open_DZE4","datsun1_civil_2_covered_DZE","datsun1_civil_2_covered_DZE1","datsun1_civil_2_covered_DZE2"
,"datsun1_civil_2_covered_DZE3","datsun1_civil_2_covered_DZE4","datsun1_civil_1_open_DZE","datsun1_civil_1_open_DZE1","datsun1_civil_1_open_DZE2","datsun1_civil_1_open_DZE3"
,"datsun1_civil_1_open_DZE4","hilux1_civil_2_covered_DZE","hilux1_civil_2_covered_DZE1","hilux1_civil_2_covered_DZE2","hilux1_civil_2_covered_DZE3","hilux1_civil_2_covered_DZE4"
,"SUV_TK_CIV_EP1","SUV_TK_CIV_EP1_DZE1","SUV_TK_CIV_EP1_DZE2","SUV_TK_CIV_EP1_DZE3","SUV_TK_CIV_EP1_DZE4","SUV_Blue","SUV_Blue_DZE1","SUV_Blue_DZE2","SUV_Blue_DZE3","SUV_Blue_DZE4"
,"SUV_Charcoal","SUV_Charcoal_DZE1","SUV_Charcoal_DZE2","SUV_Charcoal_DZE3"
,"SUV_Charcoal_DZE4","SUV_Green","SUV_Green_DZE1","SUV_Green_DZE2","SUV_Green_DZE3","SUV_Green_DZE4","SUV_Orange","SUV_Orange_DZE1","SUV_Orange_DZE2","SUV_Orange_DZE3"
,"SUV_Orange_DZE4","SUV_Pink","SUV_Pink_DZE1","SUV_Pink_DZE2","SUV_Pink_DZE3","SUV_Pink_DZE4","SUV_Red","SUV_Red_DZE1","SUV_Red_DZE2","SUV_Red_DZE3","SUV_Red_DZE4","SUV_Silver"
,"SUV_Silver_DZE1","SUV_Silver_DZE2","SUV_Silver_DZE3","SUV_Silver_DZE4","SUV_White","SUV_White_DZE1","SUV_White_DZE2","SUV_White_DZE3","SUV_White_DZE4","SUV_Yellow"
,"SUV_Yellow_DZE1","SUV_Yellow_DZE2","SUV_Yellow_DZE3","SUV_Yellow_DZE4","UralCivil_DZE","UralCivil2_DZE","Ural_TK_CIV_EP1","Ural_UN_EP1","V3S_Open_TK_CIV_EP1","Ikarus","Ikarus_TK_CIV_EP1","Tractor"
,"AH6X_DZ","MH6J_DZ","pook_H13_medevac","pook_H13_medevac_CDF","pook_H13_medevac_TAK","pook_H13_medevac_INS","pook_H13_medevac_UNO","pook_H13_medevac_PMC","pook_H13_medevac_GUE"
,"pook_H13_medevac_CIV","pook_H13_medevac_CIV_RU","pook_H13_civ","pook_H13_civ_white","pook_H13_civ_slate","pook_H13_civ_black","pook_H13_civ_yellow","pook_H13_civ_ru"
,"pook_H13_civ_ru_white","pook_H13_civ_ru_slate","pook_H13_civ_ru_black","pook_H13_civ_ru_yellow","GNT_C185U_DZ","GNT_C185_DZ","GNT_C185R_DZ","GNT_C185C_DZ","AN2_DZ","AN2_2_DZ"
,"An2_2_TK_CIV_EP1_DZ","ori_dc3","BAF_Offroad_D","BAF_Offroad_W","UAZ_CDF","UAZ_CDF_DZE1","UAZ_CDF_DZE2"
,"UAZ_CDF_DZE3","UAZ_CDF_DZE4","UAZ_INS","UAZ_INS_DZE1","UAZ_INS_DZE2","UAZ_INS_DZE3","UAZ_INS_DZE4","UAZ_RU","UAZ_RU_DZE1","UAZ_RU_DZE2","UAZ_RU_DZE3","UAZ_RU_DZE4"
,"UAZ_Unarmed_TK_EP1","UAZ_Unarmed_TK_EP1_DZE1","UAZ_Unarmed_TK_EP1_DZE2","UAZ_Unarmed_TK_EP1_DZE3","UAZ_Unarmed_TK_EP1_DZE4","SUV_Camo","SUV_Camo_DZE1","SUV_Camo_DZE2"
,"SUV_Camo_DZE3","SUV_Camo_DZE4","Ural_INS","UralOpen_INS","Ural_CDF","UralOpen_CDF","Kamaz_DZE","Kamaz_DZE1","Kamaz_DZE2","Kamaz_DZE3","Kamaz_DZE4","KamazOpen_DZE","KamazOpen_DZE1"
,"KamazOpen_DZE2","KamazOpen_DZE3","KamazOpen_DZE4","MTVR","MTVR_DES_EP1","V3S_Civ","V3S_Open_TK_EP1","V3S_TK_EP1_DZE","V3S_GUE_EP1_DZE","KamazRefuel_DZ","KamazRefuel_DZE1"
,"KamazRefuel_DZE2","KamazRefuel_DZE3","KamazRefuel_DZE4","MtvrRefuel_DES_EP1_DZ","MtvrRefuel_DZ","V3S_Refuel_TK_GUE_EP1_DZ","UralRefuel_TK_EP1_DZ","UralRefuel_CDF","UralRefuel_INS"
,"pook_H13_transport","pook_H13_transport_UNO","pook_H13_transport_CDF","pook_H13_transport_PMC","pook_H13_transport_GUE","pook_H13_transport_TAK","pook_H13_transport_INS"
,"HMMWV_DZ","HMMWV_DES_EP1","HMMWV_M1035_DES_EP1","HMMWV_Ambulance","HMMWV_Ambulance_CZ_DES_EP1","BTR40_TK_INS_EP1","BTR40_TK_GUE_EP1","Pickup_PK_TK_GUE_EP1_DZE"
,"Pickup_PK_TK_GUE_EP1_DZE1","Pickup_PK_TK_GUE_EP1_DZE2","Pickup_PK_TK_GUE_EP1_DZE3","Pickup_PK_TK_GUE_EP1_DZE4","Pickup_PK_GUE_DZE","Pickup_PK_GUE_DZE1","Pickup_PK_GUE_DZE2"
,"Pickup_PK_GUE_DZE3","Pickup_PK_GUE_DZE4","Pickup_PK_INS_DZE","Pickup_PK_INS_DZE1","Pickup_PK_INS_DZE2","Pickup_PK_INS_DZE3","Pickup_PK_INS_DZE4","HMMWV_Armored_DZ","GAZ_Vodnik_DZE"
,"BRDM2_HQ_TK_GUE_EP1_DZ","UAZ_MG_TK_EP1_DZE","UAZ_MG_CDF","UAZ_MG_INS","LandRover_MG_TK_EP1_DZE","BTR40_MG_TK_GUE_EP1","BTR40_MG_TK_INS_EP1","HMMWV_M2_DZ","HMMWV_M1151_M2_CZ_DES_EP1_DZE"
,"BAF_Jackal2_L2A1_D","BAF_Jackal2_L2A1_W","GAZ_Vodnik_MedEvac","ArmoredSUV_PMC_DZE","ArmoredSUV_PMC_DZE1","ArmoredSUV_PMC_DZE2","ArmoredSUV_PMC_DZE3","ArmoredSUV_PMC_DZE4"
,"Offroad_DSHKM_Gue_DZE","Offroad_DSHKM_Gue_DZE1","Offroad_DSHKM_Gue_DZE2","Offroad_DSHKM_Gue_DZE3","Offroad_DSHKM_Gue_DZE4","CSJ_GyroC","AH6J_EP1_DZE","HMMWV_M998A2_SOV_DES_EP1_DZE","BTR60_TK_EP1","GAZ_Vodnik_HMG","BAF_Jackal2_GMG_D"
,"BAF_Jackal2_GMG_W","BRDM2_CDF","LAV25_HQ_DZE","BTR90_HQ_DZE","M113Ambul_TK_EP1_DZ","M113_TK_EP1_DZE","M113_UN_EP1_DZE","BMP2_Ambul_INS","BMP2_HQ_CDF","BMP2_HQ_INS","Ka137_PMC","Ka137_MG_PMC"
,"pook_H13_gunship","CSJ_GyroCover","CSJ_GyroP","LandRover_Special_CZ_EP1_DZE","BRDM2_Gue","BRDM2_INS","HMMWV_M998_crows_M2_DES_EP1"
];
*/
LOG_CFG_CANLIFT_Big =[
	"CH53_DZE",	
	"CH53_DZE1",
	"CH53_DZE2",
	"CH53_DZE3",
	"CH_47F_EP1_DZE",
	"CH_47F_EP1_DZE1",
	"CH_47F_EP1_DZE2",
	"CH_47F_EP1_DZE3",
	"CH_47F_EP1_Black_DZE",
	"CH_47F_EP1_Black_DZE1",
	"CH_47F_EP1_Black_DZE2",
	"CH_47F_EP1_Black_DZE3",
	"CH_47F_EP1_GREY_DZE",
	"CH_47F_EP1_GREY_DZE1",
	"CH_47F_EP1_GREY_DZE2",
	"CH_47F_EP1_GREY_DZE3",
	"CH_47F_EP1_DES_DZE",
	"CH_47F_EP1_DES_DZE1",
	"CH_47F_EP1_DES_DZE2",
	"CH_47F_EP1_DES_DZE3",
	"MV22_DZ"	
];

//LOG_CFG_ISLIFTABLE_Big = LOG_CFG_ISLIFTABLE + LOG_CFG_CANLIFT + ["C130J_US_EP1_DZ"];