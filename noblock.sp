#pragma semicolon 1
#pragma newdecls required

#include <sdktools_functions>

#define COLLISION_ON 	5	// Включает коллизию
#define COLLISION_OFF 	2	// Отключает коллизию

public Plugin myinfo = {
	name	= "No Block",
	author	= "who2101"
};

public void OnPluginStart()
{
	HookEvent("player_spawn", OnPlayerSpawn);
}

public void OnPlayerSpawn(Event event, const char[] name, bool dontBroadcast)
{
	int client = GetClientOfUserId(event.GetInt("userid"));
	
	if(client > 0 && IsClientInGame(client) && !IsFakeClient(client))
		SetEntityCollisionGroup(client, COLLISION_OFF);
}