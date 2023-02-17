/*
Author: Skippie
Description: 
	Loads the player's economy data from the server's missionProfileNamespace and sends it to the client.
	INTERNL USE ONLY.

Arguments:
	1: STRING - player's UID

Returns:
	NONE

Example:

License:
	GNU General Public License v3.0
*/

if (!isServer) exitWith { systemChat format ["%1 - ERROR: this function should be used on the server only!", _fnc_scriptName]; };

params [
		["_playerUID", "", [""]]
		];

private _playerData;

with missionProfileNamespace do {
	_playerData = cvo_economy_db_players getOrDefault [_playerUID, [0]];
};

[_playerData] remoteExec ["cvo_economy_fnc_loadPlayerDataLocalReceive", remoteExecutedOwner];
