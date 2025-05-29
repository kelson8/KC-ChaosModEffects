-- https://github.com/gta-chaos-mod/ChaosModV/wiki/Lua-Scripting#natives

-- Toggle the military base alarms on/off without getting a wanted level.

-- Timed types can be these:
-- "None"           -- Non-timed effect
-- "Normal"         -- Normal timed effect
-- "Short"          -- Short timed effect
-- "Permanent"      -- Permanent effect
-- "Custom"         -- Timed effect with custom duration in seconds (also needs CustomTime entry in ScriptInfo)

EffectInfo = { -- ScriptInfo for mod version < 2.0
    Name = "Turn on military base alarms",
    EffectId = "test_milbase_alarms", -- ScriptId for mod version < 2.0
    TimedType = "Normal",
}

function OnStart()
    print("Turning on military base alarms")
    -- I think this is also needed
    if PREPARE_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS") then
        -- https://nativedb.dotindustries.dev/gta5/natives/0x0355EF116C4C97B2?search=START_ALARM
        START_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS", 1)
    end


end

function OnStop()
    print("Turning off military base alarms")
    -- https://nativedb.dotindustries.dev/gta5/natives/0xA1CADDCD98415A41?search=STOP_ALARM
    STOP_ALARM("PORT_OF_LS_HEIST_FORT_ZANCUDO_ALARMS")
end

-- function OnTick()

-- end