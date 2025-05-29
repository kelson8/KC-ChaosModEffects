-- -- -- https://github.com/gta-chaos-mod/ChaosModV/wiki/Lua-Scripting#natives

-- -- -- Oops, this one crashed it.
-- -- -- Break the vehicles windows and windshield if the player is in one.

-- -- TODO Set this up
-- local maxVehicleWindows = 3 -- What should i use for this?

-- -- -- Timed types can be these:
-- -- -- "None"           -- Non-timed effect
-- -- -- "Normal"         -- Normal timed effect
-- -- -- "Short"          -- Short timed effect
-- -- -- "Permanent"      -- Permanent effect
-- -- -- "Custom"         -- Timed effect with custom duration in seconds (also needs CustomTime entry in ScriptInfo)


-- EffectInfo = { -- ScriptInfo for mod version < 2.0
--     Name = "Break vehicle glass",
--     EffectId = "test_break_veh_doors", -- ScriptId for mod version < 2.0
--     TimedType = "None",
-- }

-- function OnStart()
--     print("Breaking player vehicle windshield and windows")
--     local playerVehicle = GET_VEHICLE_PED_IS_IN(playerPed, false)

--     if playerVehicle then
-- -- for i = -1, maxVehicleWindows - 1 do
--         -- for i = 0,4, 1 do
--         for i = -1, maxVehicleWindows - 1 do
--             if playerVehicle ~= 0 then  -- Ensure the vehicle is valid
--                 SMASH_VEHICLE_WINDOW(playerVehicle, i)
--             end
--         end

--         if playerVehicle ~= 0 then  -- Ensure the vehicle is valid
--             POP_OUT_VEHICLE_WINDSCREEN(playerVehicle)
--         end
--     end

-- end

-- function OnStop()

-- end

-- -- function OnStop()
-- --     -- print("")

-- --     -- local playerPed = PLAYER_PED_ID()
-- --     -- local playerVehicle = GET_VEHICLE_PED_IS_IN(playerPed)

-- --     -- if playerVehicle then
-- --     --     SET_ENTITY_AS_MISSION_ENTITY(playerVehicle)
-- --     --     DELETE_ENTITY(Holder(playerVehicle))
-- --     -- end
-- -- end

-- -- -- function OnTick()
-- -- --     for _, vehicle in ipairs(GetAllVehicles()) do
-- -- --         BRING_VEHICLE_TO_HALT(vehicle, 3.0, 3.0, false)
-- -- --         -- SET_VEHICLE_ENGINE_HEALTH(vehicle, -1.0)

-- -- --     end
-- -- -- end