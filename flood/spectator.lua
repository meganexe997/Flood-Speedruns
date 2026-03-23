-- Optimized Camera Performance in flood/spectator.lua

local sensitivityCache = {} -- Cache for sensitivity values

local function getSensitivity(player)
    local playerId = player.UserId
    -- Return cached sensitivity if available
    if sensitivityCache[playerId] then
        return sensitivityCache[playerId]
    end
    
    -- Assuming GetSensitivity is a function that fetches sensitivity value
    local sensitivity = GetSensitivity(player)
    sensitivityCache[playerId] = sensitivity -- Cache the fetched value
    return sensitivity
end

local function optimizeCamera(player)
    local sensitivity = getSensitivity(player)
    
    -- Early return if no necessary actions are required
    if not player.Character or not player.Character:FindFirstChild("Humanoid") then
        return
    end

    -- Assuming camera setup requires several calls
    -- Perform camera optimization logic here with the cached sensitivity
    -- ...
end

-- Further optimizations can be added as necessary