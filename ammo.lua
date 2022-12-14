--[[---------------------------------------------------------------------------
Ammo types
---------------------------------------------------------------------------
Ammo boxes that can be purchased in the F4 menu.

Add your custom ammo types in this file. Here's the syntax:
DarkRP.createAmmoType("ammoType", {
    name = "Ammo name",
    model = "Model",
    price = 1234,
    amountGiven = 5678,
    customCheck = function(ply) return ply:IsAdmin()
})

ammoType: The name of the ammo that Garry's mod recognizes
   If you open your SWEP's shared.lua, you can find the ammo name next to
   SWEP.Primary.Ammo = "AMMO NAME HERE"
   or
   SWEP.Secondary.Ammo = "AMMO NAME HERE"
   You can find the default gmod ammo types here: https://wiki.facepunch.com/gmod/Default_Ammo_Types

name: The name you want to give to the ammo. This can be anything.

model: The model you want the ammo to have in the F4 menu

price: the price of your ammo in dollars

amountGiven: How much bullets of this ammo is given every time the player buys it

customCheck: (Optional! Advanced!) a Lua function that describes who can buy the ammo.
    Similar to the custom check function for jobs and shipments
    Parameters:
        ply: the player who is trying to buy the ammo

Examples are below!

Pistol ammo type. Used by p228, desert eagle and all other pistols.
This ammo addition is different from the following three due to it making use of the "custom check" line.
Example 1:

DarkRP.createAmmoType("pistol", {
    name = "Pistol ammo",
    model = "models/Items/BoxSRounds.mdl",
    price = 30,
    amountGiven = 24,
    customCheck = function(ply) return
        table.HasValue({TEAM_EX_CONNORKENWAY}, ply:Team())
    end,
    CustomCheckFailMsg = "This ammo is for Connor only!",
})

Buckshot ammo, used by the shotguns
Example 2:

DarkRP.createAmmoType("buckshot", {
    name = "Shotgun ammo",
    model = "models/Items/BoxBuckshot.mdl",
    price = 50,
    amountGiven = 8
})

Rifle ammo, usually used by assault rifles
Example 3:

DarkRP.createAmmoType("ar2", {
    name = "Rifle ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 80,
    amountGiven = 30
})

SMG Ammo, usually used by small lightweight automatic guns.
Example 4:
DarkRP.createAmmoType("smg1", {
    name = "SMG ammo",
    model = "models/Items/BoxMRounds.mdl",
    price = 20,
    amountGiven = 30
})

Add new ammo types under the next line!
---------------------------------------------------------------------------]]





--[[---------------------------------------------------------------------------
M9K
---------------------------------------------------------------------------]]--

DarkRP.createAmmoType("357", {
    name = "Munici??n .357",
    model = "models/items/357ammo.mdl",
    price = 50,
    amountGiven = 10,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})

DarkRP.createAmmoType("buckshot", {
    name = "Cartuchos de Escopeta",
    model = "models/items/boxbuckshot.mdl",
    price = 50,
    amountGiven = 10,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})

DarkRP.createAmmoType("ar2", {
    name = "Munici??n Gewehr",
    model = "models/items/boxmrounds.mdl",
    price = 50,
    amountGiven = 60,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})

DarkRP.createAmmoType("smg1", {
    name = "Munici??n de SMG",
    model = "models/items/boxsrounds.mdl",
    price = 50,
    amountGiven = 60,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})

DarkRP.createAmmoType("pistol", {
    name = "Munici??n de Pistola",
    model = "models/items/boxsrounds.mdl",
    price = 50,
    amountGiven = 30,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})

DarkRP.createAmmoType("SniperPenetratedRound", {
    name = "Munici??n de Francotirador",
    model = "models/items/sniper_round_box.mdl",
    price = 50,
    amountGiven = 10,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})

DarkRP.createAmmoType("AirboatGun", {
    name = "Munici??n Winchester",
    model = "models/items/sniper_round_box.mdl",
    price = 50,
    amountGiven = 10,
    customCheck = function(ply)
        return ply:Team() == TEAM_VENDEDORARMAS
    end,
    CustomCheckFailMsg = "??Solo disponible para los vendedores de armas!",
})
