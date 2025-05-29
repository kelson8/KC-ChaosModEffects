-- https://github.com/gta-chaos-mod/ChaosModV/wiki/Lua-Scripting#natives

-- Ok this actually works, just a basic test to stop all vehicles and the player cannot even drive them.
-- This is just evil sometimes lol.

-- TODO Make this revert the effect on all vehicles when it gets disabled.

-- Timed types can be these:
-- "None"           -- Non-timed effect
-- "Normal"         -- Normal timed effect
-- "Short"          -- Short timed effect
-- "Permanent"      -- Permanent effect
-- "Custom"         -- Timed effect with custom duration in seconds (also needs CustomTime entry in ScriptInfo)



EffectInfo = { -- ScriptInfo for mod version < 2.0
    Name = "Stop all vehicles",
    EffectId = "test_stop_vehicles", -- ScriptId for mod version < 2.0
    TimedType = "Normal",


    -- IncompatibleIds = {
        -- "vehs_rainbow"
    -- }
}

function OnStart()
    print("Stopping all vehicles")
end

-- TODO Test this part.
function OnStop()
    print("Fixing stopped vehicles")

    -- local playerPed = PLAYER_PED_ID()
    -- local playerVehicle = GET_VEHICLE_PED_IS_IN(playerPed)

    -- if playerVehicle then
    --     SET_ENTITY_AS_MISSION_ENTITY(playerVehicle)
    --     DELETE_ENTITY(Holder(playerVehicle))
    -- end

    for _, vehicle in ipairs(GetAllVehicles()) do
        STOP_BRINGING_VEHICLE_TO_HALT(vehicle)
    end
end

function OnTick()
    for _, vehicle in ipairs(GetAllVehicles()) do
        BRING_VEHICLE_TO_HALT(vehicle, 3.0, 3.0, false)
        -- SET_VEHICLE_ENGINE_HEALTH(vehicle, -1.0)

    end
end