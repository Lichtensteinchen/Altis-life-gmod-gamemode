--[[ Unter bearbeitung ]]--
include("shared.lua")

function HUDHide( Hudparm1 )
	for k, v in pairs{"CHudHealth", "CHudBattery"} do
		if Hudparm1 == v then return false end
	end
end
hook.Add("HUDShouldDraw", "HUDHide", HUDHide)

function HUDC()
	local ply   = LocalPlayer()
	local HP    = ply:Health()
	local Armor = ply:Armor()
	local Money = ply:GetNetworkedInt("money") -- geld 
	local Team  = ply:Team()

	--[[ HUD Body ]]--
	draw.RoundedBox(0, 120, ScrH() - 40, 220, 200, Color(0, 0, 0, 25))

	--[[ HP ]]--
	draw.RoundedBox(0, 130, ScrH() - 180, 200, 40, Color(25, 25, 25, 25))
	draw.RoundedBox(0, 130, ScrH() - 180, math.Clamp(HP, 0, 200)*2, 40, Color(255, 0, 0, 255))
	draw.DrawText("Health: "..HP, "Trebuchet24", 130, ScrH() - 180, Color(255, 255, 255, 255))

	--[[ Armor ]]--
	draw.RoundedBox(0, 130, ScrH() - 140, 200, 40, Color(25, 25, 25, 25))
	draw.RoundedBox(0, 130, ScrH() - 140, math.Clamp(Armor, 0, 200)*2, 40, Color(0, 0, 255, 255))
	draw.DrawText("Armor: "..Armor, "Trebuchet24", 130, ScrH() - 140, Color(255, 255, 255, 255))

	--[[ Money ]]--
	draw.RoundedBox(0, 130, ScrH() - 90, 200, 40, Color(25, 25, 25, 25))
	draw.RoundedBox(0, 130, ScrH() - 90, math.Clamp(Money, 0, 200), 40, Color(0, 0, 255, 255))
	draw.DrawText("Money: "..Money, "Trebuchet24", 130, ScrH() - 90, Color(255, 255, 255, 255))

	--[[ Job ]]--
	draw.DrawText("Job: "..Team, "Trebuchet24", 130, ScrH() - 50, ply:team.GetColor())
end
hook.Add("HUDPaint", "HUDC", HUDC)