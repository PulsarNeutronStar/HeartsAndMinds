#include "cvo\cbrn\cbrn_init_local.sqf"

[compileScript ["cvo\cvo_initPlayerLocal.sqf"]] call CBA_fnc_directCall;


[] execVM "cvo\logistics\cvo_fnc_airlift.sqf";

waitUntil { time > 1; };

if (missionNamespace getVariable ['cvo_al_cond_1', true]) then {

    [
        missile_launcher_1,																	// Object the action is attached to
        "<t color='#ff0000'>Request Airlift for this Vehicle</t>",				// Title of the action
        "\a3\ui_f\data\igui\cfg\simpleTasks\types\container_ca.paa",			// Idle icon shown on screen
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",			// Progress icon shown on screen
        "cvo_al_cond_1 && (_this distance _target < 10 ) ",											// Condition for the action to be shown
        "_caller distance _target < 10",										// Condition for the action to progress
        {},																		// Code executed when action starts
        {},																		// Code executed on every progress tick
        { 
            [_this#3#2, _this#0 , _this#3#0, _this#3#1] call cvo_fnc_airlift;
            missionNamespace setVariable ['cvo_al_cond_1', false, true];
        },			// Code executed on completion
        {},																		// Code executed on interrupted
        [DZ_1,LZ, airlift_heli_1_grp],															// Arguments passed to the scripts as _this # 3
        6,																		// Action duration in seconds
        0,																		// Priority
        true,																	// Remove on completion
        false																	// Show in unconscious state
    ] call BIS_fnc_holdActionAdd;      
};

if (missionNamespace getVariable ['cvo_al_cond_2', true]) then {
    [
        missile_launcher_2,																	// Object the action is attached to
        "<t color='#ff0000'>Request Airlift for this Vehicle</t>",				// Title of the action
        "\a3\ui_f\data\igui\cfg\simpleTasks\types\container_ca.paa",			// Idle icon shown on screen
        "\a3\ui_f\data\IGUI\Cfg\holdactions\holdAction_connect_ca.paa",			// Progress icon shown on screen
        "cvo_al_cond_2 && ( _this distance _target < 10 )",											// Condition for the action to be shown
        "_caller distance _target < 10",										// Condition for the action to progress
        {},																		// Code executed when action starts
        {},																		// Code executed on every progress tick
        { 
            [_this#3#2, _this#0 , _this#3#0, _this#3#1] call cvo_fnc_airlift;
            missionNamespace setVariable ['cvo_al_cond_2', false, true];
        },			// Code executed on completion
        {},																		// Code executed on interrupted
        [DZ_2,LZ, airlift_heli_1_grp],															// Arguments passed to the scripts as _this # 3
        6,																		// Action duration in seconds
        0,																		// Priority
        true,																	// Remove on completion
        false																	// Show in unconscious state
    ] call BIS_fnc_holdActionAdd;      
};