if (SERVER) then

	AddCSLuaFile("shared.lua")
	SWEP.Weight				= 5
	SWEP.AutoSwitchTo		= false
	SWEP.AutoSwitchFrom		= false

end

if ( CLIENT ) then

	SWEP.DrawAmmo			= false
	SWEP.DrawCrosshair		= false
	SWEP.ViewModelFlip		= false
	SWEP.Slot				= 3						// Slot in the weapon selection menu
	SWEP.SlotPos			= 4						// Position in the slot

end
SWEP.PrintName 		= "SuiteHands"
SWEP.Author 		= "SligWolf"
SWEP.Base			= "weapon_base"
SWEP.Category 		= "Other"
SWEP.Contact		= ""
SWEP.Purpose		= ""
SWEP.Instructions	= ""


SWEP.Spawnable			= true
SWEP.AdminSpawnable		= true

SWEP.HoldType = "normal"
SWEP.ViewModelFlip = false
SWEP.ViewModel = "models/sligwolf/weapons/c_sw_free_hands.mdl"
SWEP.WorldModel = "models/sligwolf/weapons/c_sw_free_hands.mdl"

SWEP.Primary.Damage			= 0
SWEP.Primary.NumShots		= 0
SWEP.Primary.Cone			= 0
SWEP.Primary.Delay			= 0

SWEP.Primary.ClipSize		= 0
SWEP.Primary.DefaultClip = 0
SWEP.Primary.Automatic		= false
SWEP.Primary.Ammo = "none"
SWEP.Primary.TakeAmmo       = 0
SWEP.Primary.Tracer			= 0
SWEP.Primary.TracerName		= "none"
SWEP.Secondary.Ammo = "none"

function SWEP:Initialize()

    self:SetWeaponHoldType( self.HoldType )
	
end

function SWEP:PrimaryAttack() return end

function SWEP:SecondaryAttack() return end