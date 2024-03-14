#include "cvo\cbrn\cbrn_init_local.sqf"

[compileScript ["cvo\cvo_initPlayerLocal.sqf"]] call CBA_fnc_directCall;


[] execVM "cvo\logistics\cvo_fnc_airlift.sqf";


{
    private _string = ["CVO_AL_gvar_cond", _forEachIndex] joinString "_";
    missionNamespace getVariable [_string, true];

	[
		_x#0,																	// Object the action is attached to
		"<t color='#ff0000'>Request Airlift for this Vehicle</t>",				// Title of the action
		"\a3\ui_f\data\igui\cfg\simpleTasks\types\container_ca.paa",			// Idle icon shown on screen
		"\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",			// Progress icon shown on screen
		"missionNamespace getVariable [_this#3#3, true] && {_this distance _target < 10 }",											// Condition for the action to be shown
		"_caller distance _target < 10",										// Condition for the action to progress
		{},																		// Code executed when action starts
		{},																		// Code executed on every progress tick
		{ 
            [_this#3#2, _this#0 , _this#3#0, _this#3#1] call cvo_fnc_airlift;
            missionNamespace setVariable [_this#3#3, false, true];
        },			// Code executed on completion
		{},																		// Code executed on interrupted
		[_x#1,_x#2, _x#3, _string],															// Arguments passed to the scripts as _this # 3
		6,																		// Action duration in seconds
		0,																		// Priority
		true,																	// Remove on completion
		false																	// Show in unconscious state
	] call "BIS_fnc_holdActionAdd";                 							// MP-compatible implementation
   
} forEach [ [missile_launcher_1, DZ_1, LZ, airlift_heli_1_grp], [missile_launcher_2, DZ_2, LZ, airlift_heli_1_grp] ];