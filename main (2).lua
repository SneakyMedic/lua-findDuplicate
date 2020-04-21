Finder = require("Find")
a = {1,2,3,2,3}

function findAllDuplicates(tab1)
    prev = {}
    tab2 = {}
    for key, value in pairs(tab1) do
        val = Finder.Duplicate(tab1)
        if val~=nil then
            table.insert(prev, val)
            for key2, value2 in pairs(tab1) do
                if value2==val then
                    table.remove(tab1, key2)
                end
            end
        end
    end
    return prev
end

mytab = findAllDuplicates(a)
for key, value in pairs(mytab) do
    io.write(value," ")
end