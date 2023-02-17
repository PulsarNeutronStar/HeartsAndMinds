/*
Author: Skippie
Description: 
	Sets the money of the given player to the given amount and returns the resulting amount.
	If the given amount is less than 0, it will set the money to 0.

Arguments:
	0: OBJECT - the unit of the player
	1: SCALAR - the number to set the money to

Returns:
	NONE

Example:
	[player, 5000] call cvo_economy_fnc_setPlayerMoney; // will set the money of the player to 5000

	[player, -120] call cvo_economy_fnc_setPlayerMoney; // will set the money of the player to 0

License:
	GNU General Public License v3.0
*/

params [
		["_unit", objNull, [objNull]],
		["_moneyNew", -1e39, [0]]
		];

if !(finite _moneyNew) exitWith { systemChat format ["%1 - ERROR: money amount is undefined or set to infinite!", _fnc_scriptName]; };

private _moneyResult = (0 max _moneyNew);

if (player == _unit) exitWith { cvo_economy_player_money = _moneyResult};

[missionNamespace, ["cvo_economy_player_money", _moneyResult, false]] remoteExec [setVariable, _unit];
