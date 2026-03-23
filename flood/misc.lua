-- Optimized flood/misc.lua

local someCachedValue

local function optimizedFunction(param)
    if not param then
        return
    end

    -- Cached function calls to reduce redundant computations
    if not someCachedValue then
        someCachedValue = someFunction(param)
    end

    -- Optimized loop to reduce table lookups
    for i = 1, #someCachedTable do
        if someCachedTable[i] == param then
            return i
        end
    end

    return nil
end

return optimizedFunction