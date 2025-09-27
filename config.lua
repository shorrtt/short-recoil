Config = {}

Config.MovementSettings = {
    maxMovementSpeed = 69,
    movementMultiplier = 0.02,
    cameraDistanceThresholds = {
        close = 5.3,
        medium = 8.0,
        closeMultiplier = 1.5,
        mediumMultiplier = 4.0,
        farMultiplier = 7.0
    }
}

Config.ADSSettings = {
    recoilReduction = 0.35,
    rifleReduction = 0.15,
    otherReduction = 0.05
}

Config.ShotDecaySettings = {
    enabled = true,
    decayRate = 1 -- how much to reduce shot count when not shooting
}

Config.WeaponRecoil = {
    -- Pistols
    [GetHashKey("WEAPON_PISTOL")] = { recoil = 0.6, horizontal = 0.3, pattern = "pistol" },
    [GetHashKey("WEAPON_P226")] = { recoil = 0.6, horizontal = 0.3, pattern = "pistol" },
    [GetHashKey("WEAPON_PISTOL_MK2")] = { recoil = 0.65, horizontal = 0.25, pattern = "pistol" },
    [GetHashKey("WEAPON_COMBATPISTOL")] = { recoil = 0.55, horizontal = 0.35, pattern = "pistol" },
    [GetHashKey("WEAPON_GLOCK17")] = { recoil = 0.75, horizontal = 0.45, pattern = "pistol" },
    [GetHashKey("WEAPON_HEAVYPISTOL")] = { recoil = 0.8, horizontal = 0.6, pattern = "pistol" },
    [GetHashKey("WEAPON_SP45")] = { recoil = 0.8, horizontal = 0.6, pattern = "pistol" },
    [GetHashKey("WEAPON_FNX45")] = { recoil = 0.7, horizontal = 0.5, pattern = "pistol" },
    [GetHashKey("WEAPON_VINTAGEPISTOL")] = { recoil = 0.7, horizontal = 0.45, pattern = "pistol" },
    [GetHashKey("WEAPON_SNS_PISTOL")] = { recoil = 0.5, horizontal = 0.3, pattern = "pistol" },
    [GetHashKey("WEAPON_SNS_PISTOL_MK2")] = { recoil = 0.52, horizontal = 0.28, pattern = "pistol" },
    [GetHashKey("WEAPON_APPISTOL")] = { recoil = 0.45, horizontal = 0.25, pattern = "pistol" },
    [GetHashKey("WEAPON_GLOCK18C")] = { recoil = 0.95, horizontal = 0.45, pattern = "smg_light" },
    [GetHashKey("WEAPON_PISTOL50")] = { recoil = 1.7, horizontal = 0.7, pattern = "heavy_pistol" },
    [GetHashKey("WEAPON_CERAMICPISTOL")] = { recoil = 0.48, horizontal = 0.32, pattern = "pistol" },
    
    -- Heavy Pistols/Revolvers
    [GetHashKey("WEAPON_REVOLVER")] = { recoil = 1.2, horizontal = 0.6, pattern = "heavy_pistol" },
    [GetHashKey("WEAPON_REVOLVER_MK2")] = { recoil = 1.15, horizontal = 0.55, pattern = "heavy_pistol" },
    [GetHashKey("WEAPON_DOUBLEACTION")] = { recoil = 1.1, horizontal = 0.65, pattern = "heavy_pistol" },
    [GetHashKey("WEAPON_NAVYREVOLVER")] = { recoil = 1.25, horizontal = 0.7, pattern = "heavy_pistol" },
    
    -- SMGs
    [GetHashKey("WEAPON_MICROSMG")] = { recoil = 0.7, horizontal = 0.6, pattern = "smg" },
    [GetHashKey("WEAPON_SMG")] = { recoil = 0.5, horizontal = 0.5, pattern = "smg" },
    [GetHashKey("WEAPON_MP5")] = { recoil = 0.5, horizontal = 0.5, pattern = "smg" },
    [GetHashKey("WEAPON_SICARIO")] = { recoil = 0.7, horizontal = 0.66, pattern = "smg" },
    [GetHashKey("WEAPON_MPX")] = { recoil = 0.8, horizontal = 0.8, pattern = "smg" },
    [GetHashKey("WEAPON_SMG_MK2")] = { recoil = 0.48, horizontal = 0.45, pattern = "smg" },
    [GetHashKey("WEAPON_ASSAULTSMG")] = { recoil = 0.6, horizontal = 0.55, pattern = "smg" },
    [GetHashKey("WEAPON_COMBATPDW")] = { recoil = 0.75, horizontal = 0.8, pattern = "smg" },
    [GetHashKey("WEAPON_MACHINEPISTOL")] = { recoil = 0.7, horizontal = 0.8, pattern = "smg_heavy" },
    [GetHashKey("WEAPON_MINISMG")] = { recoil = 0.35, horizontal = 0.7, pattern = "smg_light" },
    
    -- Assault Rifles
    [GetHashKey("WEAPON_ASSAULTRIFLE")] = { recoil = 0.8, horizontal = 0.4, pattern = "rifle" },
    [GetHashKey("WEAPON_ASSAULTRIFLE_MK2")] = { recoil = 0.75, horizontal = 0.35, pattern = "rifle" },
    [GetHashKey("WEAPON_CARBINERIFLE")] = { recoil = 0.7, horizontal = 0.3, pattern = "rifle" },
    [GetHashKey("WEAPON_CARBINERIFLE_MK2")] = { recoil = 0.24, horizontal = 0.08, pattern = "shotgun_auto" },
    [GetHashKey("WEAPON_HEAVYRIFLE")] = { recoil = 0.24, horizontal = 0.08, pattern = "lmg" },
    [GetHashKey("WEAPON_M4")] = { recoil = 0.24, horizontal = 0.08, pattern = "smg_light" },
    [GetHashKey("WEAPON_ADVANCEDRIFLE")] = { recoil = 0.65, horizontal = 0.35, pattern = "rifle" },
    [GetHashKey("WEAPON_SPECIALCARBINE")] = { recoil = 0.72, horizontal = 0.68, pattern = "rifle" },
    [GetHashKey("WEAPON_SPECIALCARBINE_MK2")] = { recoil = 0.7, horizontal = 0.3, pattern = "rifle" },
    [GetHashKey("WEAPON_BULLPUPRIFLE")] = { recoil = 0.85, horizontal = 0.45, pattern = "rifle" },
    [GetHashKey("WEAPON_BULLPUPRIFLE_MK2")] = { recoil = 0.82, horizontal = 0.42, pattern = "rifle" },
    [GetHashKey("WEAPON_COMPACTRIFLE")] = { recoil = 0.9, horizontal = 0.6, pattern = "rifle_compact" },
    [GetHashKey("WEAPON_MILITARYRIFLE")] = { recoil = 1.0, horizontal = 0.5, pattern = "rifle_heavy" },
    
    -- Machine Guns
    [GetHashKey("WEAPON_MG")] = { recoil = 1.2, horizontal = 0.8, pattern = "lmg" },
    [GetHashKey("WEAPON_COMBATMG")] = { recoil = 1.1, horizontal = 0.7, pattern = "lmg" },
    [GetHashKey("WEAPON_COMBATMG_MK2")] = { recoil = 1.05, horizontal = 0.65, pattern = "lmg" },
    [GetHashKey("WEAPON_GUSENBERG")] = { recoil = 0.9, horizontal = 0.9, pattern = "lmg_vintage" },
    
    -- Sniper Rifles
    [GetHashKey("WEAPON_SNIPERRIFLE")] = { recoil = 2.0, horizontal = 0.2, pattern = "sniper" },
    [GetHashKey("WEAPON_HEAVYSNIPER")] = { recoil = 3.0, horizontal = 0.1, pattern = "sniper_heavy" },
    [GetHashKey("WEAPON_HEAVYSNIPER_MK2")] = { recoil = 2.8, horizontal = 0.12, pattern = "sniper_heavy" },
    [GetHashKey("WEAPON_MARKSMANRIFLE")] = { recoil = 1.5, horizontal = 0.25, pattern = "sniper_marksman" },
    [GetHashKey("WEAPON_MARKSMANRIFLE_MK2")] = { recoil = 1.4, horizontal = 0.22, pattern = "sniper_marksman" },
    
    -- Shotguns
    [GetHashKey("WEAPON_PUMPSHOTGUN")] = { recoil = 1.8, horizontal = 0.3, pattern = "shotgun" },
    [GetHashKey("WEAPON_PUMPSHOTGUN_MK2")] = { recoil = 1.7, horizontal = 0.28, pattern = "shotgun" },
    [GetHashKey("WEAPON_SAWNOFFSHOTGUN")] = { recoil = 2.2, horizontal = 0.8, pattern = "shotgun_sawed" },
    [GetHashKey("WEAPON_ASSAULTSHOTGUN")] = { recoil = 1.3, horizontal = 0.6, pattern = "shotgun_auto" },
    [GetHashKey("WEAPON_BULLPUPSHOTGUN")] = { recoil = 1.4, horizontal = 0.5, pattern = "shotgun" },
    [GetHashKey("WEAPON_MUSKET")] = { recoil = 2.5, horizontal = 0.4, pattern = "shotgun_heavy" },
    [GetHashKey("WEAPON_HEAVYSHOTGUN")] = { recoil = 1.6, horizontal = 0.45, pattern = "shotgun" },
    [GetHashKey("WEAPON_DBSHOTGUN")] = { recoil = 2.0, horizontal = 0.7, pattern = "shotgun_double" },
    [GetHashKey("WEAPON_AUTOSHOTGUN")] = { recoil = 1.1, horizontal = 0.65, pattern = "shotgun_auto" },
    [GetHashKey("WEAPON_COMBATSHOTGUN")] = { recoil = 1.5, horizontal = 0.55, pattern = "shotgun" }
}

Config.RecoilPatterns = {
    pistol = function(shots) 
        return math.random(-15, 15) / 100 
    end,
    
    heavy_pistol = function(shots) 
        return math.random(-25, 25) / 100 
    end,
    
    smg = function(shots) 
        local base = math.min(shots * 0.1, 0.8)
        return base + math.random(-20, 20) / 100
    end,
    
    smg_heavy = function(shots)
        local base = math.min(shots * 0.15, 1.2)
        return base + math.random(-30, 30) / 100
    end,
    
    smg_light = function(shots)
        local base = math.min(shots * 0.08, 0.6)
        return base + math.random(-15, 15) / 100
    end,
    
    rifle = function(shots)
        local base = math.min(shots * 0.12, 1.0)
        return base + math.random(-10, 10) / 100
    end,
    
    rifle_compact = function(shots)
        local base = math.min(shots * 0.18, 1.4)
        return base + math.random(-20, 20) / 100
    end,
    
    rifle_heavy = function(shots)
        local base = math.min(shots * 0.15, 1.2)
        return base + math.random(-15, 15) / 100
    end,
    
    lmg = function(shots)
        local base = math.min(shots * 0.2, 1.8)
        return base + math.random(-25, 25) / 100
    end,
    
    lmg_vintage = function(shots)
        local base = math.min(shots * 0.25, 2.0)
        return base + math.random(-35, 35) / 100
    end,
    
    sniper = function(shots) 
        return math.random(-5, 5) / 100 
    end,
    
    sniper_heavy = function(shots) 
        return math.random(-8, 8) / 100 
    end,
    
    sniper_marksman = function(shots) 
        return math.random(-12, 12) / 100 
    end,
    
    shotgun = function(shots) 
        return math.random(-20, 20) / 100 
    end,
    
    shotgun_sawed = function(shots) 
        return math.random(-40, 40) / 100 
    end,
    
    shotgun_auto = function(shots)
        local base = math.min(shots * 0.1, 0.8)
        return base + math.random(-25, 25) / 100
    end,
    
    shotgun_double = function(shots) 
        return math.random(-30, 30) / 100 
    end,
    
    shotgun_heavy = function(shots) 
        return math.random(-35, 35) / 100 
    end
}

Config.DefaultWeaponConfig = {
    rifle_group = { recoil = 0.8, horizontal = 0.4, pattern = "rifle" },
    pistol_group = { recoil = 0.6, horizontal = 0.3, pattern = "pistol" }
}