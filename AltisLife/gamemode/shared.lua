GM.Name = "Altis Life"
GM.Author = "Deadalus3010 & White_star"
GM.Email = "N/A"
GM.Website = "platincore.com"

team.SetUp( 0, "Blue", Color(0, 0, 255) )
team.SetUp( 1, "Red", Color(255, 0, 0) )

function GM:Initialize()
	self.BaseClass.Initialize( self )
end