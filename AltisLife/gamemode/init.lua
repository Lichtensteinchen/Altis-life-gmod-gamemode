AddCSLuaFile("cl_init.lua")
AddCSLuaFile("shared.lua")
AddCSLuaFile("database/cl_database.lua")
AddCSLuaFile("database/items.lua")

include("shared.lua")
include("player.lua")
include("database/database.lua")
include("database/items.lua")

util.AddNetworkString( "KEY_Q" )
local name = ply:Nick()


--[[ Spieler joint gerade den Server, ist aber nochnicht auf dem server. ]]--
function GM:PlayerConnect( name, ip )
	--print("Player: " .. name .. ", has joined the game.") -- Console print ohne farbe
	MsgC( Color( 255, 0, 0 ), "[Altis Life]", Color(255, 255, 255), "Player: " .. name .. "is joining the game." ) -- Console print MIT farbe
end

--[[ Spieler wird von Steam Geautht ]]--
function GM:PlayerAuthed( ply, steamID, uniqueID )
	--print("Player: " .. name .. ", has gotten authed.") -- Console print ohne farbe
	MsgC( Color( 255, 0, 0 ), "[Altis Life]", Color(255, 255, 255), "Player: " .. name .. "has been authed successfuly." ) -- Console print MIT farbe
	ply:databaseCheck()
end

--[[ Spieler spawnt das aller erste mal ]]--
function GM:PlayerInitialSpawn( ply )
	--print("Player: " .. name .. ", has spawned.") -- Console print ohne farbe
	MsgC( Color( 255, 0, 0 ), "[Altis Life]", Color(255, 255, 255), "Player: " .. name .. "has joined the game successfuly." ) -- Console print MIT farbe
	
	ply:SetGamemodeTeam( 0 )
end

--[[ Spieler spawnt(zmb nach tot) ]]--
function GM:PlayerSpawn( ply )
	ply:GiveGamemodeWeapons()
end

--[[ Spieler verlässt den Server]]--
function GM:PlayerDisconnected( ply )
	MsgC( Color( 255, 0, 0 ), "[Altis Life]", Color(255, 255, 255), "Player: " .. name .. "has left the game." ) -- Console print MIT farbe
	ply:databaseDisconnect()
end

net.Receive("KEY_Q", function(len, ply)
	hook.Call("KEY_Q", GAMEMODE, ply)
end)
