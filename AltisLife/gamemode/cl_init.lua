include("shared.lua")
include("database/cl_database.lua")
include("database/items.lua")

local function keyQ()
	if input.IsKeyDown(KEY_Q) then
		net.Start("KEY_Q")
		net.SendToServer()
		
		hook.Call("KEY_Q", GAMEMODE, ply)
	end
end
hook.Add( "Think", "q_pressed", keyQ )

function ChangeMyTeam( ply, cmd, args )
    ply:SetTeam( args[1] )
    ply:Spawn()
end
concommand.Add( "set_team", ChangeMyTeam )