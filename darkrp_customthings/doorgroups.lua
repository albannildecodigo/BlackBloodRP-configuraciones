--[[---------------------------------------------------------------------------
Door groups
---------------------------------------------------------------------------
The server owner can set certain doors as owned by a group of people, identified by their jobs.


HOW TO MAKE A DOOR GROUP:
AddDoorGroup("NAME OF THE GROUP HERE, you will see this when looking at a door", Team1, Team2, team3, team4, etc.)
---------------------------------------------------------------------------]]


-- Example: AddDoorGroup("Cops and Mayor only", TEAM_CHIEF, TEAM_POLICE, TEAM_MAYOR)
-- Example: AddDoorGroup("Gundealer only", TEAM_GUN)

AddDoorGroup(
    "Solo Policias o Instituciones Gubernamentales",
    TEAM_POLICIA,
    TEAM_PRESIDENTE,
    TEAM_SWAT,
    TEAM_SWATSNIPER,
    TEAM_JUGGERNAUT,
    TEAM_FBI,
    TEAM_COMISARIO,
    TEAM_COALITION,
    TEAM_POLICIAANTIDROGAS,
    TEAM_POLICIATRANSITO,
    TEAM_POLICIACIVIL,
    TEAM_ADMINPRINCIPAL,
    TEAM_SUPERADMIN,
    TEAM_ADMIN,
    TEAM_MODERADOR,
    TEAM_MODERADORDEPRUEBA,
    TEAM_AYUDANTE
)
