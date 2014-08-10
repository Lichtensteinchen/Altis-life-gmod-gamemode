AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("database/cl_database.lua")
AddCSLuaFile("database/items.lua")

include("shared.lua")
include("player.lua")
include("database/database.lua")
include("database/items.lua")

util.AddNetworkString( "KEY_Q" )

function GM:PlayerConnect( name, ip )
	print("Player: " .. name .. ", has joined the game.")
end

function GM:PlayerInitialSpawn( ply )
	print("Player: " .. ply:Nick() .. ", has spawned.")
	
	ply:SetGamemodeTeam( 0 )
end

function GM:PlayerSpawn( ply )
	ply:SetModel("models/player/group01/male_07.mdl")
	ply:GiveGamemodeWeapons()
end

function GM:PlayerAuthed( ply, steamID, uniqueID )
	print("Player: " .. ply:Nick() .. ", has gotten authed.")
	ply:databaseCheck()
end

function GM:PlayerDisconnected( ply )
	ply:databaseDisconnect()
end

net.Receive("KEY_Q", function(len, ply)
	hook.Call("KEY_Q", GAMEMODE, ply)
end)

