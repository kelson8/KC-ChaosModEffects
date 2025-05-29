-- https://github.com/gta-chaos-mod/ChaosModV/wiki/Lua-Scripting#natives

-- Draw random text to the screen from my string below.

EffectInfo = { -- ScriptInfo for mod version < 2.0
    Name = "Draw random text",
    EffectId = "misc_draw_text_screen", -- ScriptId for mod version < 2.0
    TimedType = "Normal",
}

-- Get random letters
-- https://stackoverflow.com/questions/71541205/how-do-i-make-a-string-in-lua-contain-random-characters
local randuppercase = string.char(math.random(65, 65 + 25))
local randlowercase = string.char(math.random(65, 65 + 25)):lower()

-- print(randlowercase, randuppercase)
-- Example output: g    W

-- Get random strings from a list
-- https://stackoverflow.com/questions/2988246/choose-a-random-item-from-a-table
local stringTable = {"You might be blown up", "I have a suprise for you", "Go fetch the grenade!",
                    "Now you've gone too far", "Exploding all vehicles... Not", "Give it up, you'll never win"}

-- iterate over whole table to get all keys
local keyset = {}
for k in pairs(stringTable) do
    table.insert(keyset, k)
end
-- now you can reliably return a random key
random_elem = stringTable[keyset[math.random(#keyset)]]

-- This is mostly adapted from my FiveM tests here:
-- https://git.internal.kelsoncraft.net/kelson8/fivem-scripts/src/branch/main/kc_menu/client/debug_text.lua

-- Set the colors for the text on screen.
local color = {
    r = 200,
    b = 100,
    g = 88,
    a = 255
}

-- Setup the text for displaying on the screen
local function setupText()
    SET_TEXT_FONT(0) -- 0 -> 4
    SET_TEXT_SCALE(0.3, 0.3)
    SET_TEXT_COLOUR(color.r, color.g, color.b, color.a)
    BEGIN_TEXT_COMMAND_DISPLAY_TEXT("STRING")
end

-- Set the text position with a fixed x value of 0.0001
local function textPosition(y)
    END_TEXT_COMMAND_DISPLAY_TEXT(0.0001, y)
end

-- Set the text position with a custom x, and y value
-- This can be toggled if needed.
-- local function textPosition(x, y)
--     END_TEXT_COMMAND_DISPLAY_TEXT(x, y)
-- end

-- Set text under the Chaos Mod timer bar, I normally leave the y value alone.
local function textPositionOne()
    textPosition(0.0200)
    -- Can switch to this for a custom x value if enabled above.
    -- END_TEXT_COMMAND_DISPLAY_TEXT(0.0001, 0.0200, 0)
end


function OnStart()
    print("Random text started")
end

function OnStop()
    print("Random text ended")

    -- local playerPed = PLAYER_PED_ID()
    -- local playerVehicle = GET_VEHICLE_PED_IS_IN(playerPed)
end

function OnTick()
    -- The text gets set to one random string, this is what keeps it drawing to the screen.
    setupText()
    -- ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(randlowercase)
    ADD_TEXT_COMPONENT_SUBSTRING_PLAYER_NAME(random_elem)
    textPositionOne()
end