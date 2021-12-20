
class RscText
{
	type = 0;
	idc = -1;
	x = 0;
	y = 0;
	h = 0.037;
	w = 0.3;
	style = 0x100; 
	font = Zeppelin32;
	SizeEx = 0.03921;
	colorText[] = {1,1,1,1};
	colorBackground[] = {0, 0, 0, 0};
	linespacing = 1;
};

class RscPicture
{
	type=0;
	idc=-1;
	style=48;
	colorBackground[]={0,0,0,0};
	colorText[]={1,1,1,1};
	font="TahomaB";
	sizeEx=0;
	lineSpacing=0;
	text="";
};

class RscPictureGUI
{
    type = 0;
    idc = -1;
    colorBackground[] = {0,0,0,0};
    //colorText[] = {0.38,0.63,0.26,0.75};
	colorText[] = {1,1,1,1};
    font = "TahomaB";
    sizeEx = 0;
    lineSpacing = 0;
    text = "";
    style = "0x30 + 0x100";
    x = 0;
    y = 0;
    w = 0.2;
    h = 0.15;
};

class RscStructuredText
{
	type = 13;
	idc = -1;
	style = 0;
	colorText[] = {0.8784,0.8471,0.651,1};
	class Attributes
	{
		font = "Zeppelin32";
		color = "#e0d8a6";
		align = "center";
		shadow = 1;
	};
	x = 0;
	y = 0;
	h = 0.035;
	w = 0.1;
	text = "";
	size = "(((((safezoneW / safezoneH) min 1.2) / 1.2) / 28) * 1)";
	shadow = 2;
};

class RscLoadingText : RscText
{
	style = 2;
	x = 0.323532;
	y = 0.666672;
	w = 0.352944;
	h = 0.039216;
	sizeEx = 0.03921;
	colorText[] = {0.543,0.5742,0.4102,1.0};
};

class RscProgress
{
	x = 0.344;
	y = 0.619;
	w = 0.313726;
	h = 0.0261438;
	texture = "\ca\ui\data\loadscreen_progressbar_ca.paa";
	colorFrame[] = {0,0,0,0};
	colorBar[] = {1,1,1,1};
};

class RscProgressNotFreeze
{
	idc = -1;
	type = 45;
	style = 0;
	x = 0.022059;
	y = 0.911772;
	w = 0.029412;
	h = 0.039216;
	texture = "#(argb,8,8,3)color(0,0,0,0)";
};

class DayZ_loadingScreen
{ 
	idd = -1;
	duration = 10e10;
	fadein = 0;
	fadeout = 0;
	name = "loading screen";
	class controlsBackground
	{
		class blackBG : RscText
		{
			x = safezoneX;
			y = safezoneY;
			w = safezoneW;
			h = safezoneH;
			text = "";
			colorText[] = {0,0,0,0};
			colorBackground[] = {0,0,0,1};
		};
	};
	class controls
	{
		class Title1 : RscLoadingText
		{
			text = "$STR_LOADING"; // "Loading" text in the middle of the screen
		};
		class CA_Progress : RscProgress // progress bar, has to have idc 104
		{
			idc = 104;
			type = 8; // CT_PROGRESS
			style = 0; // ST_SINGLE
			texture = "\ca\ui\data\loadscreen_progressbar_ca.paa";
		};
		class CA_Progress2 : RscProgressNotFreeze // progress bar that will go reverse
		{
			idc = 103;
		};
		class Name2: RscText // the text on the top-left
		{
			idc = 101;
			x = 0.05;
			y = 0.029412;
			w = 0.9;
			h = 0.04902;
			text = "";
			sizeEx = 0.05;
			colorText[] = {0.543,0.5742,0.4102,1.0};
		};
	};
};

// logo watermark
class RscTitles {
	class wm_disp {
		idd = -1;
		onLoad = "uiNamespace setVariable ['wm_disp', _this select 0]";
		fadein = 0;
		fadeout = 0;
		duration = 10e10;
		controlsBackground[] = {};
		objects[] = {};
		class controls {
			class wm_text2 {
				idc = 1;
				x = safeZoneX+0.027;//safeZoneW*0.01;
				y = safeZoneY+safeZoneH-0.16;
				w = 0.151*safeZoneH;
				h = 0.057*safeZoneH;
				shadow = 2;
				class Attributes
				{
					font = "EtelkaNarrowMediumPro";
					color = "#24FFFFFF";
					align = "left"; // put "center" here if you want some background
					valign = "middle";
					shadow = 2;
				};
				colorBackground[] = { 1, 0.3, 0, 0 };  // uncomment and increase 4th number to have a background
				font = "EtelkaNarrowMediumPro";
				size = 0.06*safeZoneH;
				type = 13;
				style = 0;
				text="";
			};
		};
	};
	class playerStatusGUI {
		idd = 6900;
		movingEnable = 0;
		duration = 100000;
		name = "statusBorder";
		onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
		class ControlsBackground {
			class RscStructuredText_1199: RscStructuredText
			{
				idc = 1199;
				x = 0.250001;
				y = 0.350001;
				w = 0.5;
				h = 0.1;
			};
			class RscPicture_1901: RscPictureGUI
			{
				idc = 1901;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;//2
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1201: RscPictureGUI
			{
				idc = 1201;
				text = "\z\addons\dayz_code\gui\status\status_food_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;//2
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1900: RscPictureGUI
			{
				idc = 1900;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1200: RscPictureGUI
			{
				idc = 1200;
				text = "\z\addons\dayz_code\gui\status\status_blood_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1902: RscPictureGUI
			{
				idc = 1902;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY; //1
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1202: RscPictureGUI
			{
				idc = 1202;
				text = "\z\addons\dayz_code\gui\status\status_thirst_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY; //1
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1908: RscPictureGUI
			{
				idc = 1908;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1208: RscPictureGUI
			{
				idc = 1208;
				text = "\z\addons\dayz_code\gui\status\status_temp_outside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY; //3
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1203: RscPictureGUI
			{
				idc = 1203;
				text = "\z\addons\dayz_code\gui\status\status_effect_brokenleg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.58 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};
			class RscPicture_1904: RscPictureGUI
			{
				idc = 1904;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.44 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1204: RscPictureGUI
			{
				idc = 1204;
				text = "\z\addons\dayz_code\gui\status\status_sound_muted.paa"; // previously status_connection_ca which is not used
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.44 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};
			class RscPicture_1205: RscPictureGUI
			{
				idc = 1205;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1206: RscPictureGUI
			{
				idc = 1206;
				text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1209: RscPictureGUI
			{
				idc = 1209;
				//text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.65 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1207: RscPictureGUI
			{
				idc = 1207;
				//text = "\z\addons\dayz_code\gui\status\status_combat_border_CA.paa";
				x = 0.958 * safezoneW + safezoneX; // Moved right slightly to better fit full size background
				y = 0.655 * safezoneH + safezoneY; // Moved down slightly to better fit full size background
				w = 0.06; //decreased slightly (0.075 is too big)
				h = 0.08; //decreased slightly (0.10 is too big)
			};
		};
		class Controls {
			class RscPicture_1300: RscPictureGUI
			{
				idc = 1300;
				//text = "\z\addons\dayz_code\gui\status\status_blood_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1301: RscPictureGUI
			{
				idc = 1301;
				//text = "\z\addons\dayz_code\gui\status\status_food_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1302: RscPictureGUI
			{
				idc = 1302;
				//text = "\z\addons\dayz_code\gui\status\status_thirst_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1303: RscPictureGUI
			{
				idc = 1303;
				text = "\z\addons\dayz_code\gui\status\status_bleeding_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,0.5};
			};
			class RscPicture_1304: RscPictureGUI
			{
				idc = 1304;
				text = "\z\addons\dayz_code\gui\status\status_noise.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1305: RscPictureGUI
			{
				idc = 1305;
				text = "\z\addons\dayz_code\gui\status\status_visible.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1306: RscPictureGUI
			{
				idc = 1306;
				//text = "\z\addons\dayz_code\gui\status\status_temp_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1307 : RscPictureGUI
			{
				idc = 1307;
				//text = "\z\addons\dayz_code\gui\status\status_combat_inside_ca.paa";
				x = 0.958 * safezoneW + safezoneX; // Moved right slightly to better fit full size background
				y = 0.655 * safezoneH + safezoneY; // Moved down slightly to better fit full size background
				w = 0.06; //decreased slightly (0.075 is too big)
				h = 0.08; //decreased slightly (0.10 is too big)
			};
			class RscPicture_1310: RscPictureGUI
			{
				idc = 1310;
				// blood type
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
		};
	};
	class playerStatusGUI_epoch {
		idd = 6905;
		movingEnable = 0;
		duration = 100000;
		name = "statusBorder";
		onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
		class ControlsBackground {
			class RscStructuredText_1199: RscStructuredText
			{
				idc = 1199;
				x = 0.250001;
				y = 0.350001;
				w = 0.5;
				h = 0.1;
			};
			class RscPicture_1203: RscPictureGUI
			{
				idc = 1203;
				text = "\z\addons\dayz_code\gui\status_epoch\status_fracture_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.58 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
				colorText[] = {1,1,1,1};
			};
			class RscPicture_1904: RscPictureGUI
			{
				idc = 1904;
				//text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.51 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1204: RscPictureGUI
			{
				idc = 1204;
				text = "\z\addons\dayz_code\gui\status\status_sound_muted.paa"; // previously status_connection_ca which is not used
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.44 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};
		};
		class Controls {
			class RscPicture_1300: RscPictureGUI
			{
				idc = 1300;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_blood_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1301: RscPictureGUI
			{
				idc = 1301;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_food_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1302: RscPictureGUI
			{
				idc = 1302;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_thirst_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1303: RscPictureGUI
			{
				idc = 1303;
				text = "\z\addons\dayz_code\gui\status_epoch\status_bleeding_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,0.5};
			};
			class RscPicture_1304: RscPictureGUI
			{
				idc = 1304;
				text = "\z\addons\dayz_code\gui\status_epoch\status_ear_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1305: RscPictureGUI
			{
				idc = 1305;
				text = "\z\addons\dayz_code\gui\status_epoch\status_eye_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1306: RscPictureGUI
			{
				idc = 1306;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_temp_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1307 : RscPictureGUI
			{
				idc = 1307;
				text = "\z\addons\dayz_code\gui\status_epoch\status_combat_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.65 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1308: RscPictureGUI
			{
				idc = 1308;
				//text = "\z\addons\dayz_code\gui\status_epoch\val_5_ca.paa";
				x = 0.929813 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1309: RscPictureGUI
			{
				idc = 1309;
				//text = "\z\addons\dayz_code\gui\status_epoch\val_5_ca.paa";
				x = 0.929813 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1310: RscPictureGUI
			{
				idc = 1310;
				// blood type
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};			
		};
	};
	class playerStatusGUI_legacy {
		idd = 6906;
		movingEnable = 0;
		duration = 100000;
		name = "statusBorder";
		onLoad = "uiNamespace setVariable ['DAYZ_GUI_display', _this select 0];";
		class ControlsBackground {
			class RscStructuredText_1199: RscStructuredText
			{
				idc = 1199;
				x = 0.250001;
				y = 0.350001;
				w = 0.5;
				h = 0.1;
			};
			class RscPicture_1200: RscPictureGUI
			{
				idc = 1200;
				text = "\z\addons\dayz_code\gui\status_epoch\status_blood_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;//2
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1201: RscPictureGUI
			{
				idc = 1201;
				text = "\z\addons\dayz_code\gui\status_epoch\status_food_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY; //1
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1202: RscPictureGUI
			{
				idc = 1202;
				text = "\z\addons\dayz_code\gui\status_epoch\status_thirst_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY; //3
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1203: RscPictureGUI
			{
				idc = 1203;
				text = "\z\addons\dayz_code\gui\status_epoch\status_fracture_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.58 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
				colorText[] = {1,1,1,1};
			};
			class RscPicture_1904: RscPictureGUI
			{
				idc = 1904;
				//text = "\z\addons\dayz_code\gui\status\status_bg.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.51 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1204: RscPictureGUI
			{
				idc = 1204;
				text = "\z\addons\dayz_code\gui\status\status_sound_muted.paa"; // previously status_connection_ca which is not used
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.44 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
				colorText[] = {1,1,1,1};
			};
			class RscPicture_1208: RscPictureGUI
			{
				idc = 1208;
				text = "\z\addons\dayz_code\gui\status_epoch\status_temp_outside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY; //3
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1207 : RscPictureGUI
			{
				idc = 1207;
				text = "\z\addons\dayz_code\gui\status_epoch\status_combat_border_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.65 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
		};
		class Controls {
			class RscPicture_1300: RscPictureGUI
			{
				idc = 1300;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_blood_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1301: RscPictureGUI
			{
				idc = 1301;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_food_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.86 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1302: RscPictureGUI
			{
				idc = 1302;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_thirst_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.93 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1303: RscPictureGUI
			{
				idc = 1303;
				text = "\z\addons\dayz_code\gui\status_epoch\status_bleeding_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
				colorText[] = {1,1,1,0.5};
			};
			class RscPicture_1304: RscPictureGUI
			{
				idc = 1304;
				text = "\z\addons\dayz_code\gui\status_epoch\status_ear_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1305: RscPictureGUI
			{
				idc = 1305;
				text = "\z\addons\dayz_code\gui\status_epoch\status_eye_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1306: RscPictureGUI
			{
				idc = 1306;
				//text = "\z\addons\dayz_code\gui\status_epoch\status_temp_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.72 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1307 : RscPictureGUI
			{
				idc = 1307;
				text = "\z\addons\dayz_code\gui\status_epoch\status_combat_inside_ca.paa";
				x = 0.955313 * safezoneW + safezoneX;
				y = 0.65 * safezoneH + safezoneY;
				w = 0.06;
				h = 0.08;
			};
			class RscPicture_1308: RscPictureGUI
			{
				idc = 1308;
				//text = "\z\addons\dayz_code\gui\status\val_5_ca.paa";
				x = 0.929813 * safezoneW + safezoneX;
				y = 0.30 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1309: RscPictureGUI
			{
				idc = 1309;
				//text = "\z\addons\dayz_code\gui\status\val_5_ca.paa";
				x = 0.929813 * safezoneW + safezoneX;
				y = 0.37 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
			class RscPicture_1310: RscPictureGUI
			{
				idc = 1310;
				// blood type
				x = 0.951613 * safezoneW + safezoneX;
				y = 0.79 * safezoneH + safezoneY;
				w = 0.075;
				h = 0.10;
			};
		};
	};	
};