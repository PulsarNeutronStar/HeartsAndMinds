/*
Author: Skippie
Description: 
	Sends command to the server to save the player's economy data in the server's missionProfileNamespace.

Arguments:
	NONE

Returns:
	NONE

Example:
	[] call cvo_economy_fnc_savePlayerData;

License:
	GNU General Public License v3.0
*/

if (!hasInterface) exitWith {};

private _playerUID = getPlayerUID player;
private _dataArray = [cvo_economy_player_money]

[_playerUID, _dataArray] remoteExec [cvo_economy_fnc_savePlayerDataServer, 2];
