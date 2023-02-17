/*
Author: Skippie
Description: 
	Changes the money of the given player by the given amount and returns the resulting amount.
	If the resulting amount is less than 0, it will set the money to 0.

Arguments:
	0: OBJECT - the unit of the player
	1: SCALAR - the number to change the money by

Returns:
	NONE

Example:
	[player, 5000] call cvo_economy_fnc_changePlayerMoney; // will add 5000 to the player's money

	[player, -120] call cvo_economy_fnc_changePlayerMoney; // will substract 120 from the player's money

License:
	GNU General Public License v3.0
*/

params [
		["_unit", objNull, [objNull]],
		["_moneyChange", -1e39, [0]]
		];

if !(finite _moneyChange) exitWith { systemChat format ["%1 - ERROR: money amount is undefined or set to infinite!", _fnc_scriptName]; };

private _moneyResult = (0 max (cvo_economy_player_money + _moneyChange));

if (player == _unit) exitWith { cvo_economy_player_money = _moneyResult};

[missionNamespace, ["cvo_economy_player_money", _moneyResult, false]] remoteExec [setVariable, _unit];
