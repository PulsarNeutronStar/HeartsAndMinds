/*
Author: Skippie
Description: 
	Initializes the economy systems server-side.
	INTERNAL USE ONLY.

Arguments:
	NONE

Returns:
	NONE

Example:

License:
	GNU General Public License v3.0
*/

if (!isServer) exitWith { systemChat format ["%1 - ERROR: this function should be used on the server only!", _fnc_scriptName]; };


with missionProfileNamespace do {
	[] spawn {
		if (isNil "cvo_economy_db_players") then {
			cvo_economy_db_players = createHashMap;
			systemChat "CVO Economy: Database not found, created new one.";
		} else {
			systemChat (format ["CVO Economy: Successfully loaded the database with %1 entries.", count cvo_economy_db_players]);
		};
	};
};
