-- https://github.com/gta-chaos-mod/ChaosModV/wiki/Lua-Scripting#natives

EffectInfo = { -- ScriptInfo for mod version < 2.0
    Name = "Random license plates",
    EffectId = "misc_random_licenseplates", -- ScriptId for mod version < 2.0
    TimedType = "Normal",
    IncompatibleIds = {
        "vehs_rainbow"
    }
}

function OnStart()
    print("Random license plates")
end

function OnStop()
    print("Stopping random license plates.")

    -- local playerPed = PLAYER_PED_ID()
    -- local playerVehicle = GET_VEHICLE_PED_IS_IN(playerPed)

    -- if playerVehicle then
    --     SET_ENTITY_AS_MISSION_ENTITY(playerVehicle)
    --     DELETE_ENTITY(Holder(playerVehicle))
    -- end
end

function OnTick()
    for _, vehicle in ipairs(GetAllVehicles()) do
        -- TODO Make this be a random number or something.
        SET_VEHICLE_NUMBER_PLATE_TEXT(vehicle, "ExChaos")

        -- SET_VEHICLE_ENGINE_HEALTH(vehicle, -1.0)
        -- SET_VEHICLE_CUSTOM_PRIMARY_COLOUR(vehicle, math.random(255), math.random(255), math.random(255))
    end
end