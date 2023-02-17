/*
Author: Skippie
Description: 
	Saves the player's economy data in the server's missionProfileNamespace.
	INTERNL USE ONLY.

Arguments:
	1: STRING - player's UID
	2: ARRAY - array of data

Returns:
	NONE

Example:

License:
	GNU General Public License v3.0
*/

if (!isServer) exitWith { systemChat format ["%1 - ERROR: this function should be used on the server only!", _fnc_scriptName]; };

params [
		["_playerUID", "", [""]],
		["_dataArray", [0], [[]]]
		];

with missionProfileNamespace do {
	cvo_economy_db_players set [_playerUID, _dataArray];
};

saveMissionProfileNamespace;

if (isRemoteExecuted) then {
	["Your economy data has been successfully saved."] remoteExec ["hint", remoteExecutedOwner];
};
