/*
Author: Skippie
Description: 
	Sends command to the server to load the player's economy data from the server's missionProfileNamespace.
	Local use.

Arguments:
	NONE

Returns:
	NONE

Example:
	[] call cvo_economy_fnc_loadPlayerDataLocal;

License:
	GNU General Public License v3.0
*/

private _playerUID = getPlayerUID player;

[_playerUID] remoteExec ["cvo_economy_fnc_loadPlayerDataServer", 2];

[] spawn {
	while (isNil "cvo_economy_db_received_data") do {
		sleep 0.1;
	};

	cvo_economy_db_received_data params ["_dataMoney"];

	cvo_economy_player_money = _dataMoney;

	cvo_economy_db_received_data = nil;
};
