local Find = {}
function Find.Duplicate(thistable)
    previous = {}
    for key, value in pairs(thistable) do
        for key2, value2 in pairs(previous) do
            if value==value2 then
                return value
            end
        end
        table.insert(previous, value)
    end
end
return Find