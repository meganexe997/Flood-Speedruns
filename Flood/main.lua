-- Optimized Flood/main.lua

local function isValidPlayer(player)
    return player and player:isAlive()
end

local function cacheGlobalVariables()
    local players = game:GetService("Players"):GetPlayers()
    local cachedPlayers = {}
    for _, player in ipairs(players) do
        if isValidPlayer(player) then
            table.insert(cachedPlayers, player)
        end
    end
    return cachedPlayers
end

local function performActionOnPlayers(cachedPlayers)
    for _, player in ipairs(cachedPlayers) do
        if isValidPlayer(player) then
            -- Perform actions for each valid player
        end
    end
end

local function mainLoop()
    local cachedPlayers = cacheGlobalVariables()
    if #cachedPlayers == 0 then return end  -- Early return if no valid players
    performActionOnPlayers(cachedPlayers)
end

-- Call the main loop to start the performance process
mainLoop()