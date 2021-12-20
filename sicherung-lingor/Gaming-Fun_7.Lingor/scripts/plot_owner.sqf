/*
	File name: plot_owner.sqf
	Description: Lets player identify the owner of a base / plot pole via walking up to it.
	Author: BigEgg
	Revised: 06/24/2021
*/

while {69 == 69} do
{
	local _plots = player nearEntities ["Plastic_Pole_EP1_DZ", DZE_PlotPole select 0];
	if (count _plots > 0 && {!((_plots select 0) in (player getVariable ["plots_read", []]))}) then { //---Make sure player has not already learned the owner of the plot
		local _friends = (_plots select 0) getVariable ["plotfriends", []];
		if (count _friends > 0 && {({(_x select 0) == (getPlayerUID player)} count _friends) < 1}) then { //---Make sure we don't post this message every time the player enters their own plot
			systemChat format["This plot belongs to %1.", toString((_friends select 0) select 1)];
			format["This plot belongs to %1.", toString((_friends select 0) select 1)] call dayz_rollingMessages;
		};
		local _plots_read = player getVariable ["plots_read", []];
		player setVariable ["plots_read", _plots_read + [_plots select 0]]; //---We keep track of the plots that the player has learned the owner of to prevent spam
	};
	uiSleep 1;
};