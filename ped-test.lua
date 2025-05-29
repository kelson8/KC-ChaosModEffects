-- https://github.com/gta-chaos-mod/ChaosModV/wiki/Lua-Scripting#natives

-- So far, this is just setup to put all the peds in the sky besides the player.

-- Timed types can be these:
-- "None"           -- Non-timed effect
-- "Normal"         -- Normal timed effect
-- "Short"          -- Short timed effect
-- "Permanent"      -- Permanent effect
-- "Custom"         -- Timed effect with custom duration in seconds (also needs CustomTime entry in ScriptInfo)

EffectInfo = { -- ScriptInfo for mod version < 2.0
    Name = "Random ped effect",
    EffectId = "misc_test_peds", -- ScriptId for mod version < 2.0
    TimedType = "None", -- Don't want this one timed.
}

function OnStart()
    for _, ped in ipairs(GetAllPeds()) do

        -- Make this do nothing to the player for now
        if not IS_PED_A_PLAYER(ped) then

            -- Well this works, excluding the player.
            local currentPedCoords = GET_ENTITY_COORDS(ped)
            local x = currentPedCoords.x
            local y = currentPedCoords.y
            local z = currentPedCoords.z + 100

            SET_ENTITY_COORDS(ped, x, y, z, false, false, false, false)

        end

    end

end

function OnStop()

end

-- function OnTick()

-- end