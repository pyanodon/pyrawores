-- TECH CHANGES
TECHNOLOGY("railway-mk01"):add_prereq("solder-mk01")
TECHNOLOGY("railway-mk02"):remove_prereq("nexelit"):add_prereq("nexelit-mk01")
TECHNOLOGY("radars-mk01"):remove_pack("logistic-science-pack")

if mods["pyhightech"] then
    TECHNOLOGY("radars-mk02"):remove_pack("chemical-science-pack")
end

-- RECIPE UNLOCKS


-- RECIPE CHANGES
