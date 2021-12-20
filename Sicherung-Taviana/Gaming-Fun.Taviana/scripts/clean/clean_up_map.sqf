{
	hideobject _x;
	_x hideObject true;
	_x enableSimulation false;
} count(nearestObjects [getMarkerPos "center", ["Land_tav_HouseBlock_D1_ex2"],18000]);

{
	hideobject _x;
	_x hideObject true;
	_x enableSimulation false;
} count(nearestObjects [getMarkerPos "center", ["LAND_vetrak1","LAND_vetrak2","LAND_Ruske_kolo","Land_traktorkabina","Land_traktorpredek","Land_zombie_spawn"],15000]);

{_x animate ["ani_grender1",1];} count(nearestObjects[[23405,5300,0],["Land_sh_mid_left","Land_sh_mid_right","Land_sh_part1","Land_sh_part1_budka","Land_sh_part2","Land_zabor1","Land_zabor2","Land_zabor3","Land_zabor4","Land_zabor5"],150]);
