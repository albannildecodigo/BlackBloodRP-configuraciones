--[[---------------------------------------------------------------------------
DarkRP custom shipments and guns
---------------------------------------------------------------------------

This file contains your custom shipments and guns.
This file should also contain shipments and guns from DarkRP that you edited.

Note: If you want to edit a default DarkRP shipment, first disable it in darkrp_config/disabled_defaults.lua
    Once you've done that, copy and paste the shipment to this file and edit it.

The default shipments and guns can be found here:
https://github.com/FPtje/DarkRP/blob/master/gamemode/config/addentities.lua

For examples and explanation please visit this wiki page:
https://darkrp.miraheze.org/wiki/DarkRP:CustomShipmentFields


Add shipments and guns under the following line:
---------------------------------------------------------------------------]]

DarkRP.createShipment("Esposas Elásticas", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_cuff_elastic",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Esposas de plastico", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_cuff_plastic",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Esposas de policía", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_cuff_police",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Cuerda de Sujeción", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_cuff_rope",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Grilletes", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_cuff_shackles",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Grilletes Tácticos", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_cuff_tactical",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Correa básica", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_leash_base",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Correa elástica", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_leash_elastic",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Correa de cuerda", {
    model = "models/freeman/owain_ropebarrier_rope.mdl",
    entity = "weapon_leash_rope",
    price = 1000,
    amount = 1,
    separate = true,
    pricesep = 1000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Ganzua", {
    model = "models/weapons/w_crowbar.mdl",
    entity = "lockpick",
    price = 3600,
    amount = 3,
    separate = true,
    pricesep = 1200,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Especiales",
})

DarkRP.createShipment("Ganzua Profesional", {
    model = "models/weapons/w_crowbar.mdl",
    entity = "pro_lockpick",
    price = 15000,
    amount = 3,
    separate = true,
    pricesep = 5000,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    customCheck = function(ply)
        if CLIENT then return true end
        local hasCustomer = false
        for k,v in pairs(ents.FindInSphere(ply:GetPos(), 5000)) do
            if not IsValid(v) then continue end
            if not v:IsPlayer() then continue end
            if v:Team() == TEAM_LADRONPRO or v:Team() == TEAM_LADRON then
                hasCustomer = true
                break
            end
        end
        return hasCustomer
    end,
    CustomCheckFailMsg = "¡Tienes que estar cerca a un ladron o ladron profesional para comprar esto",
    category = "Especiales",
})

DarkRP.createShipment("IED Detonator", {
    model = "models/weapons/w_camphon2.mdl",
    entity = "m9k_ied_detonator",
    price = 12000,
    amount = 3,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    customCheck = function(ply)
        if CLIENT then return true end
        local hasCustomer = false
        for k,v in pairs(ents.FindInSphere(ply:GetPos(), 5000)) do
            if not IsValid(v) then continue end
            if not v:IsPlayer() then continue end
            if v:Team() == TEAM_LIDERRESISTENCIA then
                hasCustomer = true
                break
            end
        end
        return hasCustomer
    end,
    CustomCheckFailMsg = "¡Tienes que estar cerca a un líder de resistencia para comprar esto",
    category = "Especiales",
})

DarkRP.createShipment("Bolsa para Joyería", {
    model = "models/sterling/ajr_backpack.mdl",
    entity = "jewelry_robbery_bag",
    price = 3000,
    amount = 3,
    separate = true,
    pricesep = 1000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    customCheck = function(ply)
        if CLIENT then return true end
        local hasCustomer = false
        for k,v in pairs(ents.FindInSphere(ply:GetPos(), 5000)) do
            if not IsValid(v) then continue end
            if not v:IsPlayer() then continue end
            if v:Team() == TEAM_LADRONPRO then
                hasCustomer = true
                break
            end
        end
        return hasCustomer
    end,
    CustomCheckFailMsg = "¡Tienes que estar cerca a un ladron profesional para comprar esto",
    category = "Especiales",
})

DarkRP.createShipment("Celular para Joyería", {
    model = "models/sterling/ajr_phone_w.mdl",
    entity = "jewelry_robbery_cellphone",
    price = 500,
    amount = 1,
    separate = true,
    pricesep = 500,
    noship = true,
    allowed = { TEAM_VENDEDORARMAS },
    customCheck = function(ply)
        if CLIENT then return true end
        local hasCustomer = false
        for k,v in pairs(ents.FindInSphere(ply:GetPos(), 5000)) do
            if not IsValid(v) then continue end
            if not v:IsPlayer() then continue end
            if v:Team() == TEAM_LADRONPRO then
                hasCustomer = true
                break
            end
        end
        return hasCustomer
    end,
    CustomCheckFailMsg = "¡Tienes que estar cerca a un ladron profesional para comprar esto",
    category = "Especiales",
})

DarkRP.createShipment("Tableta remota criptominería", {
    model = "models/craphead_scripts/bitminers/dlc/mediapad.mdl",
    entity = "ch_bitminers_tablet",
    price = 5000,
    amount = 1,
    separate = true,
    pricesep = 2500,
    noship = true,
    --allowed = {TEAM_GANG, TEAM_CRIMINAL, TEAM_COCAINE, TEAM_ADMIN},
    category = "Criptomineria",
})

DarkRP.createShipment("Llave de reparación criptominería", {
    model = "models/craphead_scripts/the_cocaine_factory/wrench/w_wrench.mdl",
    entity = "ch_bitminers_repair_wrench",
    price = 4000,
    amount = 1,
    separate = true,
    pricesep = 1750,
    noship = true,
    --allowed = {TEAM_GANG, TEAM_CRIMINAL, TEAM_COCAINE, TEAM_ADMIN},
    category = "Criptomineria",
})

--[[---------------------------------------------------------------------------
M9K
---------------------------------------------------------------------------]]--

DarkRP.createShipment("Python", {
    model = "models/weapons/w_colt_python.mdl",
    entity = "m9k_coltpython",
    price = 12000,
    amount = 10,
    separate = true,
    pricesep = 1200,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Colt 1911", {
    model = "models/weapons/s_dmgf_co1911.mdl",
    entity = "m9k_colt1911",
    price = 12000,
    amount = 10,
    separate = true,
    pricesep = 1200,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("HK USP", {
    model = "models/weapons/w_pist_fokkususp.mdl",
    entity = "m9k_usp",
    price = 15000,
    amount = 10,
    separate = true,
    pricesep = 1500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("HK 45C", {
    model = "models/weapons/w_hk45c.mdl",
    entity = "m9k_hk45",
    price = 15000,
    amount = 10,
    separate = true,
    pricesep = 1500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Luger", {
    model = "models/weapons/w_luger_p08.mdl",
    entity = "m9k_luger",
    price = 12000,
    amount = 10,
    separate = true,
    pricesep = 1200,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("S&W 500", {
    model = "models/weapons/w_sw_model_500.mdl",
    entity = "m9k_model500",
    price = 27500,
    amount = 10,
    separate = true,
    pricesep = 2750,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Desert Eagle", {
    model = "models/weapons/w_tcom_deagle.mdl",
    entity = "m9k_deagle",
    price = 27500,
    amount = 10,
    separate = true,
    pricesep = 2750,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Glock 18", {
    model = "models/weapons/w_dmg_glock.mdl",
    entity = "m9k_glock",
    price = 15000,
    amount = 10,
    separate = true,
    pricesep = 1500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("M29 Satan", {
    model = "models/weapons/w_m29_satan.mdl",
    entity = "m9k_m29satan",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("M92 Beretta", {
    model = "models/weapons/w_beretta_m92.mdl",
    entity = "m9k_m92baretta",
    price = 14000,
    amount = 10,
    separate = true,
    pricesep = 1400,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("P08 Luger", {
    model = "models/weapons/w_luger_p08.mdl",
    entity = "m9k_luger",
    price = 14000,
    amount = 10,
    separate = true,
    pricesep = 1400,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Raging Bull", {
    model = "models/weapons/w_taurus_raging_bull.mdl",
    entity = "m9k_ragingbull",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Raging Bull Scoped", {
    model = "models/weapons/w_raging_bull_scoped.mdl",
    entity = "m9k_scoped_taurus",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("S&W Model 3 Russian", {
    model = "models/weapons/w_model_3_rus.mdl",
    entity = "m9k_model3russian",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("S&W 627", {
    model = "models/weapons/w_sw_model_627.mdl",
    entity = "m9k_model627",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("Remington 1858", {
    model = "models/weapons/w_remington_1858.mdl",
    entity = "m9k_remington1858",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

DarkRP.createShipment("SIG Sauer P229R", {
    model = "models/weapons/w_sig_229r.mdl",
    entity = "m9k_sig_p229r",
    price = 15000,
    amount = 10,
    separate = true,
    pricesep = 1500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Pistolas",
})

---SMGs---
DarkRP.createShipment("KRISS Vector", {
    model = "models/weapons/w_kriss_vector.mdl",
    entity = "m9k_vector",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("HK MP7", {
    model = "models/weapons/w_mp7_silenced.mdl",
    entity = "m9k_mp7",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("AAC Honey Badger", {
    model = "models/weapons/w_aac_honeybadger.mdl",
    entity = "m9k_honeybadger",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("HK MP5", {
    model = "models/weapons/w_hk_mp5.mdl",
    entity = "m9k_mp5",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("Bizon PP19", {
    model = "models/weapons/w_pp19_bizon.mdl",
    entity = "m9k_bizonp19",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("HK UMP45", {
    model = "models/weapons/w_hk_ump45.mdl",
    entity = "m9k_ump45",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("HK USC", {
    model = "models/weapons/w_hk_usc.mdl",
    entity = "m9k_usc",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("KAC PDW", {
    model = "models/weapons/w_kac_pdw.mdl",
    entity = "m9k_kac_pdw",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("Magpul PDR", {
    model = "models/weapons/w_magpul_pdr.mdl",
    entity = "m9k_magpulpdr",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("MP40", {
    model = "models/weapons/w_mp40smg.mdl",
    entity = "m9k_mp40",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("MP5 Silenced", {
    model = "models/weapons/w_hk_mp5sd.mdl",
    entity = "m9k_mp5sd",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("MP9", {
    model = "models/weapons/w_brugger_thomet_mp9.mdl",
    entity = "m9k_mp9",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("STEN", {
    model = "models/weapons/w_sten.mdl",
    entity = "m9k_sten",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("TEC-9", {
    model = "models/weapons/w_intratec_tec9.mdl",
    entity = "m9k_tec9",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("Tommy Gun", {
    model = "models/weapons/w_tommy_gun.mdl",
    entity = "m9k_thompson",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("UZI", {
    model = "models/weapons/w_uzi_imi.mdl",
    entity = "m9k_uzi",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})

DarkRP.createShipment("FN P90", {
    model = "models/weapons/w_fn_p90.mdl",
    entity = "m9k_smgp90",
    price = 21000,
    amount = 10,
    separate = true,
    pricesep = 2100,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "SMGs",
})


---Rifles---
DarkRP.createShipment("73 Winchester Carbine", {
    model = "models/weapons/w_winchester_1873.mdl",
    entity = "m9k_winchester73",
    price = 35000,
    amount = 10,
    separate = true,
    pricesep = 3500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("Acr", {
    model = "models/weapons/w_masada_acr.mdl",
    entity = "m9k_acr",
    price = 40000,
    amount = 10,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("AK-47", {
    model = "models/weapons/w_ak47_m9k.mdl",
    entity = "m9k_ak47",
    price = 40000,
    amount = 10,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("AK-74", {
    model = "models/weapons/w_tct_ak47.mdl",
    entity = "m9k_ak74",
    price = 40000,
    amount = 10,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("AMD 65", {
    model = "models/weapons/w_amd_65.mdl",
    entity = "m9k_amd65",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("AN-94", {
    model = "models/weapons/w_rif_an_94.mdl",
    entity = "m9k_an94",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("AS VAL", {
    model = "models/weapons/w_dmg_vally.mdl",
    entity = "m9k_val",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("F2000", {
    model = "models/weapons/w_fn_f2000.mdl",
    entity = "m9k_f2000",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("FAMAS", {
    model = "models/weapons/w_tct_famas.mdl",
    entity = "m9k_famas",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("G36", {
    model = "models/weapons/w_hk_g36c.mdl",
    entity = "m9k_g36",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("HK G3A3", {
    model = "models/weapons/w_hk_g3.mdl",
    entity = "m9k_g3a3",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("L85", {
    model = "models/weapons/w_l85a2.mdl",
    entity = "m9k_l85",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("FN FAL", {
    model = "models/weapons/w_fn_fal.mdl",
    entity = "m9k_fal",
    price = 40000,
    amount = 10,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("M14", {
    model = "models/weapons/w_snip_m14sp.mdl",
    entity = "m9k_m14sp",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("M16A4 Scoped", {
    model = "models/weapons/w_dmg_m16ag.mdl",
    entity = "m9k_m16a4_acog",
    price = 52500,
    amount = 10,
    separate = true,
    pricesep = 5250,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("M4A1 Iron", {
    model = "models/weapons/w_m4a1_iron.mdl",
    entity = "m9k_m4a1",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("HK 416", {
    model = "models/weapons/w_hk_416.mdl",
    entity = "m9k_m416",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("Scar", {
    model = "models/weapons/w_fn_scar_h.mdl",
    entity = "m9k_scar",
    price = 60000,
    amount = 10,
    separate = true,
    pricesep = 6000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("TAR-21", {
    model = "models/weapons/w_imi_tar21.mdl",
    entity = "m9k_tar21",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("Steyr AUG A3", {
    model = "models/weapons/w_auga3.mdl",
    entity = "m9k_auga3",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("Val", {
    model = "models/weapons/w_dmg_vally.mdl",
    entity = "m9k_val",
    price = 55750,
    amount = 10,
    separate = true,
    pricesep = 5575,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

DarkRP.createShipment("SR-3M Vikhr", {
    model = "models/weapons/w_dmg_vikhr.mdl",
    entity = "m9k_vikhr",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles",
})

---Escopetas---
DarkRP.createShipment("1887 Winchester", {
    model = "models/weapons/w_winchester_1887.mdl",
    entity = "m9k_1887winchester",
    price = 40000,
    amount = 10,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Double Barrel", {
    model = "models/weapons/w_double_barrel_shotgun.mdl",
    entity = "m9k_dbarrel",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Browning 5 Auto", {
    model = "models/weapons/w_browning_auto.mdl",
    entity = "m9k_browningauto5",
    price = 80000,
    amount = 10,
    separate = true,
    pricesep = 8000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Pancor Jackhammer", {
    model = "models/weapons/w_pancor_jackhammer.mdl",
    entity = "m9k_jackhammer",
    price = 80000,
    amount = 10,
    separate = true,
    pricesep = 8000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Benelli M3", {
    model = "models/weapons/w_benelli_m3.mdl",
    entity = "m9k_m3",
    price = 45000,
    amount = 10,
    separate = true,
    pricesep = 4500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Ithaca M37", {
    model = "models/weapons/w_ithaca_m37.mdl",
    entity = "m9k_ithacam37",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Mossberg 590", {
    model = "models/weapons/w_mossberg_590.mdl",
    entity = "m9k_mossberg590",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("SPAS 12", {
    model = "models/weapons/w_spas_12.mdl",
    entity = "m9k_spas12",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Striker 12", {
    model = "models/weapons/w_striker_12g.mdl",
    entity = "m9k_striker12",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("USAS", {
    model = "models/weapons/w_usas_12.mdl",
    entity = "m9k_usas",
    price = 30000,
    amount = 10,
    separate = true,
    pricesep = 3000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("Remington 870", {
    model = "models/weapons/w_remington_870_tact.mdl",
    entity = "m9k_remington870",
    price = 25000,
    amount = 10,
    separate = true,
    pricesep = 2500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

DarkRP.createShipment("1897 Winchester", {
    model = "models/weapons/w_winchester_1897_trench.mdl",
    entity = "m9k_1897winchester",
    price = 40000,
    amount = 10,
    separate = true,
    pricesep = 4000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Escopetas",
})

---Rifles de Francotirador---
DarkRP.createShipment("Barret M82", {
    model = "models/weapons/w_barret_m82.mdl",
    entity = "m9k_barret_m82",
    price = 100000,
    amount = 10,
    separate = true,
    pricesep = 10000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("Barret M98B", {
    model = "models/weapons/w_barrett_m98b.mdl",
    entity = "m9k_m98b",
    price = 110000,
    amount = 10,
    separate = true,
    pricesep = 11000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("SVT 40", {
    model = "models/weapons/w_svt_40.mdl",
    entity = "m9k_svt40",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("Dragunov SVU", {
    model = "models/weapons/w_dragunov_svu.mdl",
    entity = "m9k_svu",
    price = 80000,
    amount = 10,
    separate = true,
    pricesep = 8000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("SVD Dragunov", {
    model = "models/weapons/w_svd_dragunov.mdl",
    entity = "m9k_dragunov",
    price = 85000,
    amount = 10,
    separate = true,
    pricesep = 8500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("Intervention", {
    model = "models/weapons/w_snip_int.mdl",
    entity = "m9k_intervention",
    price = 125000,
    amount = 10,
    separate = true,
    pricesep = 12500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("PSG-1", {
    model = "models/weapons/w_hk_psg1.mdl",
    entity = "m9k_psg1",
    price = 70000,
    amount = 10,
    separate = true,
    pricesep = 7000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("AW 50", {
    model = "models/weapons/w_acc_int_aw50.mdl",
    entity = "m9k_aw50",
    price = 100000,
    amount = 10,
    separate = true,
    pricesep = 10000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("HK SL8", {
    model = "models/weapons/w_hk_sl8.mdl",
    entity = "m9k_sl8",
    price = 100000,
    amount = 10,
    separate = true,
    pricesep = 10000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("M24", {
    model = "models/weapons/w_snip_m24_6.mdl",
    entity = "m9k_m24",
    price = 70000,
    amount = 10,
    separate = true,
    pricesep = 7000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("Remington 7615P", {
    model = "models/weapons/w_remington_7615p.mdl",
    entity = "m9k_remington7615p",
    price = 80000,
    amount = 10,
    separate = true,
    pricesep = 8000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("Thompson Condender", {
    model = "models/weapons/w_g2_contender.mdl",
    entity = "m9k_contender",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

--[[
DarkRP.createShipment("AWP", {
    model = "models/weapons/w_snip_awp.mdl",
    entity = "weapon_mad_awp",
    price = 50000,
    amount = 10,
    separate = true,
    pricesep = 5000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})

DarkRP.createShipment("Scout", {
    model = "models/weapons/w_snip_scout.mdl",
    entity = "weapon_mad_scout",
    price = 45000,
    amount = 10,
    separate = true,
    pricesep = 4500,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Rifles de Francotirador",
})--]]

---MACHINE GUNS---
--Nearly all the MGs are the same, so only 3
DarkRP.createShipment("FG42", {
    model = "models/weapons/w_fg42.mdl",
    entity = "m9k_fg42",
    price = 40000000,
    amount = 10,
    separate = true,
    pricesep = 4000000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Ametralladoras Ligeras",
})

DarkRP.createShipment("M60", {
    model = "models/weapons/w_m60_machine_gun.mdl",
    entity = "m9k_m60",
    price = 40000000,
    amount = 10,
    separate = true,
    pricesep = 4000000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Ametralladoras Ligeras",
})

DarkRP.createShipment("Mini Gun", {
    model = "models/weapons/w_m134_minigun.mdl",
    entity = "m9k_minigun",
    price = 50000000,
    amount = 10,
    separate = true,
    pricesep = 5000000,
    noship = false,
    allowed = { TEAM_VENDEDORARMAS },
    category = "Ametralladoras Ligeras",
})
  