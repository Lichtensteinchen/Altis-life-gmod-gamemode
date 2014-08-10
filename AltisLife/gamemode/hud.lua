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

	--[[ HP ]]--
	draw.RoundedBox(0, 130, ScrH() - 200, 200, 40, Color(25, 25, 25, 25))
	draw.RoundedBox(0, 130, ScrH() - 200, math.Clamp(HP, 0, 200)*2, 40, Color(255, 0, 0, 255))
	draw.DrawText("Health: "..HP, "Trebuchet24", 130, ScrH() - 200, Color(255, 255, 255, 255))

	--[[ Armor ]]--
	draw.RoundedBox(0, 130, ScrH() - 150, 200, 40, Color(25, 25, 25, 25))
	draw.RoundedBox(0, 130, ScrH() - 150, math.Clamp(Armor, 0, 200)*2, 40, Color(0, 0, 255, 255))
	draw.DrawText("Armor: "..Armor, "Trebuchet24", 130, ScrH() - 150, Color(255, 255, 255, 255))

	--[[ Money ]]--
	draw.RoundedBox(0, 130, ScrH() - 100, 200, 40, Color(25, 25, 25, 25))
	draw.RoundedBox(0, 130, ScrH() - 100, math.Clamp(Money, 0, 200), 40, Color(0, 0, 255, 255))
	draw.DrawText("Money: "..Money, "Trebuchet24", 130, ScrH() - 100, Color(255, 255, 255, 255))

	--[[ Job ]]--
	draw.DrawText("Job: "..Team, "Trebuchet24", 130, ScrH() - 50, ply:team.GetColor())
end
hook.Add("HUDPaint", "HUDC", HUDC)