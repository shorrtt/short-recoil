local shotCount = {}
local lastWeapon = nil

local function GetWeaponConfig(weaponHash)
    local weaponConfig = Config.WeaponRecoil[weaponHash]
    
    if weaponConfig then
        return weaponConfig.recoil, weaponConfig.horizontal, weaponConfig.pattern
    else
        local group = GetWeapontypeGroup(weaponHash)
        if group == 970310034 or group == 1159398588 then -- Rifle groups
            local defaultConfig = Config.DefaultWeaponConfig.rifle_group
            return defaultConfig.recoil, defaultConfig.horizontal, defaultConfig.pattern
        else
            local defaultConfig = Config.DefaultWeaponConfig.pistol_group
            return defaultConfig.recoil, defaultConfig.horizontal, defaultConfig.pattern
        end
    end
end

local function GetCameraDistanceMultiplier(cameraDistance)
    local settings = Config.MovementSettings.cameraDistanceThresholds
    
    if cameraDistance < settings.close then
        return settings.closeMultiplier
    elseif cameraDistance < settings.medium then
        return settings.mediumMultiplier
    else
        return settings.farMultiplier
    end
end

-- Main recoil thread
Citizen.CreateThread(function()
    while true do
        local ply = PlayerPedId()
        
        if IsPedArmed(ply, 6) then
            Wait(0)
        else
            Wait(1500)
        end
        
        local _, wep = GetCurrentPedWeapon(ply)
        
        if lastWeapon ~= wep then
            shotCount[wep] = 0
            lastWeapon = wep
        end
        
        if wep ~= GetHashKey("WEAPON_SNOWBALL") and IsPedShooting(ply) then
            shotCount[wep] = (shotCount[wep] or 0) + 1

            local gamePlayCam = GetFollowPedCamViewMode()
            local movementSpeed = math.ceil(GetEntitySpeed(ply))
            local currentPitch = GetGameplayCamRelativePitch()
            local cameraDistance = #(GetGameplayCamCoord() - GetEntityCoords(ply))
            
            if movementSpeed > Config.MovementSettings.maxMovementSpeed then
                movementSpeed = Config.MovementSettings.maxMovementSpeed
            end
            
            local baseRecoil, horizontalRecoil, pattern = GetWeaponConfig(wep)
            
            local movementMultiplier = 1 + (movementSpeed * Config.MovementSettings.movementMultiplier)
            
            local recoil = (math.random(50, 75) / 100) * baseRecoil * movementMultiplier
            
            local cameraMultiplier = GetCameraDistanceMultiplier(cameraDistance)
            
            if gamePlayCam == 4 then
                recoil = recoil * Config.ADSSettings.recoilReduction
                if pattern == "rifle" or pattern == "rifle_compact" or pattern == "rifle_heavy" then
                    recoil = recoil * Config.ADSSettings.rifleReduction
                else
                    recoil = recoil * Config.ADSSettings.otherReduction
                end
            end
            local patternFunction = Config.RecoilPatterns[pattern] or Config.RecoilPatterns["pistol"]
            local patternRecoil = patternFunction(shotCount[wep])
            recoil = recoil + patternRecoil
            
            local currentHeading = GetGameplayCamRelativeHeading()
            local horizontalVariation = (math.random(-100, 100) / 100) * horizontalRecoil * movementMultiplier
            if math.random() < 0.7 then
                SetGameplayCamRelativeHeading(currentHeading + horizontalVariation)
            end
            
            SetGameplayCamRelativePitch(currentPitch + recoil, 1.0)
            
        else
            if Config.ShotDecaySettings.enabled and shotCount[wep] then
                shotCount[wep] = math.max(0, shotCount[wep] - Config.ShotDecaySettings.decayRate)
            end
        end
    end
end)