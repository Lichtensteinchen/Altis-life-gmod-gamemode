local items = {}

function getItems( name )
	if items[name] then
		return items[name];
	end
	return false
end

items["soda1"] = 	{
					name = "Blueberry Soda",
					desc = "The finest blueberry soda in the land!",
					ent = "item_basic",
					prices = {
						buy = 18,
						sell = 9,
					},
					model = "models/props_junk/PopCan01a.mdl",
					use = (function(ply, ent)
						if ply:IsValid() then
							ply:SetHealth( ply:Health() + 2 )
							if ent then
								ent:Remove()
							end
						end
					end),
					spawn = (function(ply, ent)
						ent:SetItemName( "soda")
					end),
					skin = 0,
					buttonDist = 32,
					}
items["soda2"] = 	{
					name = "Strawberry Soda",
					desc = "The finest strawberry soda in the land!",
					ent = "item_basic",
					prices = {
						buy = 18,
						sell = 9,
					},
					model = "models/props_junk/PopCan01a.mdl",
					use = (function(ply, ent)
						if ply:IsValid() then
							ply:SetHealth( ply:Health() + 2 )
							if ent then
								ent:Remove()
							end
						end
					end),
					spawn = (function(ply, ent)
						ent:SetItemName( "soda")
					end),
					skin = 1,
					buttonDist = 32,
					}
items["soda3"] = 	{
					name = "Orange Soda",
					desc = "The finest orange soda in the land!",
					ent = "item_basic",
					prices = {
						buy = 18,
						sell = 9,
					},
					model = "models/props_junk/PopCan01a.mdl",
					use = (function(ply, ent)
						if ply:IsValid() then
							ply:SetHealth( ply:Health() + 2 )
							if ent then
								ent:Remove()
							end
						end
					end),
					spawn = (function(ply, ent)
						ent:SetItemName( "soda")
					end),
					skin = 2,
					buttonDist = 32,
					}