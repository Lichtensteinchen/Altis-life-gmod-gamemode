GM.Name = "Example"
GM.Author = "N/A"
GM.Email = "N/A"
GM.Website = "www.goature.com"

team.SetUp( 0, "Blue", Color(0, 0, 255) )
team.SetUp( 1, "Red", Color(255, 0, 0) )

function GM:Initialize()
	self.BaseClass.Initialize( self )
end