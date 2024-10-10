--[[
local entities = {}
local ings = {}
local clean_ings = {}

for i, item in pairs(data.raw.technology['machines-mk02'].effects) do
    if data.raw['assembling-machine'][item.recipe] ~= nil or  data.raw.furnace[item.recipe] ~= nil or data.raw['mining-drill'][item.recipe] ~= nil then
        table.insert(entities, item.recipe)
        local s_ing
        for _, ing in pairs(data.raw.recipe[item.recipe].ingredients) do
            s_ing = ing.name or ing[1]
            table.insert(ings, s_ing)
            if clean_ings[s_ing] ~= true then
                clean_ings[s_ing] = true
            end
        end
    end
end

table.sort(entities)
table.sort(ings)
table.sort(clean_ings)

log(serpent.block(entities))
log(serpent.block(ings))
log(serpent.block(clean_ings))
]] --
