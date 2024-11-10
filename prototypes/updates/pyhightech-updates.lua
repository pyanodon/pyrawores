--TECHNOLOGY--
-- TECHNOLOGY('coal-processing-3'):add_prereq('ht-trains')

--ENITITY
if mods["pyhightech"] and not mods["pyalienlife"] then
    table.insert(data.raw["assembling-machine"]["crash-site-assembling-machine-1-repaired"].minable.results, {type = "item", name = "duralumin", amount = 50})
end

RECIPE("al-pulp-01"):replace_ingredient("boric-acid", "phosphoric-acid")
RECIPE("powdered-ralesia-seeds").category = "pulp"
RECIPE("glass-fiber"):add_ingredient {type = "item", name = "sodium-sulfate", amount = 1}:add_ingredient {type = "fluid", name = "molten-glass", amount = 100, fluidbox_index = 2}
RECIPE("phosphate-glass"):add_ingredient {type = "item", name = "sodium-sulfate", amount = 1}:replace_ingredient("glass-fiber", "crushed-quartz")
RECIPE("nexelit-matrix"):replace_ingredient("wood", "epoxy")
RECIPE("rayon"):add_ingredient {type = "item", name = "sodium-carbonate", amount = 5}
RECIPE("propene"):replace_ingredient("iron-plate", "lead-plate")
RECIPE("fiberboard"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 3}
RECIPE("micro-fiber"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 3}
RECIPE("phenolicboard"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 3}
RECIPE("epoxy"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 5}
--RECIPE('outlet-gas-3'):add_result({type = "fluid", name = "ammonia", amount = 50})
RECIPE("high-flux-core"):replace_ingredient("liquid-pure-air", "liquid-nitrogen")
RECIPE("diode-core"):replace_ingredient("liquid-pure-air", "liquid-nitrogen")
RECIPE("heavy-fermion"):replace_ingredient("uranium-238", "40-u-powder")
RECIPE("capacitor-termination"):replace_ingredient("boric-acid", "liquid-nitrogen")
RECIPE("superconductor"):replace_ingredient("liquid-helium", "liquid-nitrogen")
RECIPE("silicon-wafer"):add_ingredient {type = "item", name = "crushed-quartz", amount = 2}:add_ingredient {type = "item", name = "aramid", amount = 1}
RECIPE("nano-wires"):add_ingredient {type = "item", name = "gold-plate", amount = 10}
RECIPE("capacitor1"):replace_ingredient("copper-plate", "tin-plate")
RECIPE("resistor1"):replace_ingredient("iron-plate", "tin-plate"):add_ingredient {type = "item", name = "glass", amount = 1}
RECIPE("resistor3"):add_ingredient {type = "item", name = "nickel-plate", amount = 2}
RECIPE("capacitor2"):replace_ingredient("steel-plate", "aluminium-plate"):remove_ingredient("cermet"):add_ingredient {type = "fluid", name = "al-pulp-01", amount = 10}:replace_ingredient("copper-cable", "tinned-cable")
RECIPE("inductor3"):add_ingredient {type = "item", name = "gold-plate", amount = 1}:replace_ingredient("copper-cable", "tinned-cable")
RECIPE("inductor2"):replace_ingredient("copper-cable", "tinned-cable")
RECIPE("re-tin"):replace_ingredient("iron-plate", "tin-plate")
RECIPE("capacitor-termination"):replace_ingredient("steel-plate", "nickel-plate"):replace_ingredient("copper-plate", "tin-plate"):add_ingredient {type = "item", name = "silver-plate", amount = 1}
RECIPE("sodium-silicate"):replace_ingredient("phenol", "sodium-hydroxide")
RECIPE("dimethyldichlorosilane"):replace_ingredient("crushed-copper", "grade-4-copper")
RECIPE("colloidal-silica"):replace_ingredient("niobium-plate", "lead-plate")
RECIPE("resorcinol"):replace_ingredient("phenol", "sodium-hydroxide")
RECIPE("carbon-aerogel"):remove_ingredient("silicon"):add_ingredient {type = "item", name = "purified-quartz", amount = 1}:remove_ingredient("syngas"):add_ingredient {type = "fluid", name = "nitrogen", amount = 50}
RECIPE("zinc-acetate"):replace_ingredient("stone-brick", "zinc-plate")
RECIPE("ndfeb-alloy"):replace_ingredient("carbon-dioxide", "oxygen").category = "py-rawores-smelter"
RECIPE("supercapacitor-shell"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("lithium-chloride"):replace_ingredient("sulfuric-acid", "hydrogen-chloride")
RECIPE("lithium-niobate"):replace_ingredient("chromium", "lithium-chloride")
RECIPE("syngas-methane"):replace_ingredient("niobium-plate", "nickel-plate")
RECIPE("methane-methanal"):replace_ingredient("water", "oxygen")
RECIPE("paramagnetic-material"):replace_ingredient("iron-plate", "aluminium-plate")
RECIPE("vacuum-tube"):add_ingredient {type = "item", name = "glass", amount = 2}
RECIPE("pcb2"):add_ingredient {type = "item", name = "tin-plate", amount = 5}
RECIPE("pcb3"):add_ingredient {type = "item", name = "tin-plate", amount = 5}
RECIPE("pcb4"):add_ingredient {type = "item", name = "lead-plate", amount = 5}
RECIPE("microchip"):add_ingredient {type = "item", name = "tin-plate", amount = 5}:replace_ingredient("copper-cable", "tinned-cable")
RECIPE("crude-cermet"):add_ingredient {type = "item", name = "ore-nickel", amount = 5}
RECIPE("diode"):add_ingredient {type = "item", name = "tin-plate", amount = 3}
RECIPE("bisphenol-a"):add_ingredient {type = "fluid", name = "hydrogen-chloride", amount = 50}
RECIPE("pdms"):add_ingredient {type = "fluid", name = "hydrogen-chloride", amount = 50}
RECIPE("nic-core"):add_ingredient {type = "item", name = "nickel-plate", amount = 2}:add_ingredient {type = "fluid", name = "hydrogen", amount = 100}
RECIPE("processor"):add_ingredient {type = "item", name = "gold-plate", amount = 2}:add_ingredient {type = "item", name = "aluminium-plate", amount = 2}
RECIPE("capacitor-core"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 30}
RECIPE("heavy-fermion"):add_ingredient {type = "item", name = "gold-plate", amount = 5}
RECIPE("nxag-matrix"):add_ingredient {type = "item", name = "silver-plate", amount = 4}
RECIPE("paradiamatic-resistor"):add_ingredient {type = "item", name = "lead-plate", amount = 4}
RECIPE("zinc-nanocompound"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 8}
RECIPE("csle-diode"):add_ingredient {type = "item", name = "salt", amount = 40}
RECIPE("re-magnet"):add_ingredient {type = "item", name = "nickel-plate", amount = 2}
RECIPE("superconductor"):add_ingredient {type = "item", name = "gold-plate", amount = 1}
RECIPE("nanocrystaline-core"):add_ingredient {type = "item", name = "gold-plate", amount = 2}
RECIPE("supercapacitor-core"):add_ingredient {type = "item", name = "silver-plate", amount = 2}
RECIPE("glycerol2"):add_ingredient {type = "item", name = "sodium-hydroxide", amount = 5}
RECIPE("nems"):add_ingredient {type = "item", name = "glass", amount = 10}
RECIPE("volumetric-capacitor"):add_ingredient {type = "item", name = "glass", amount = 10}
RECIPE("yag-laser-module"):add_ingredient {type = "item", name = "aluminium-plate", amount = 10}
RECIPE("diamagnetic-material"):add_ingredient {type = "item", name = "lead-plate", amount = 2}
RECIPE("black-liquor"):add_ingredient {type = "fluid", name = "oxygen", amount = 100}
RECIPE("plastic3"):add_ingredient {type = "fluid", name = "hydrogen", amount = 50}
RECIPE("intelligent-unit"):add_ingredient {type = "item", name = "solder", amount = 4}
RECIPE("molten-super-steel"):add_ingredient {type = "item", name = "silicon", amount = 2}
RECIPE("full-molten-super-steel-3"):add_ingredient {type = "item", name = "silicon", amount = 2}
RECIPE("py-construction-robot-mk04"):add_ingredient {type = "item", name = "super-alloy", amount = 4}
RECIPE("py-logistic-robot-mk04"):add_ingredient {type = "item", name = "super-alloy", amount = 4}
RECIPE("moondrop-greenhouse-mk01"):add_ingredient {type = "item", name = "glass", amount = 40}
RECIPE("electronics-factory-mk02"):add_ingredient {type = "item", name = "glass", amount = 40}
RECIPE("chipshooter-mk02"):add_ingredient {type = "item", name = "glass", amount = 40}
RECIPE("nano-assembler-mk02"):add_ingredient {type = "item", name = "glass", amount = 40}
RECIPE("nano-assembler-mk01"):add_ingredient {type = "item", name = "glass", amount = 40}
RECIPE("ech"):add_ingredient {type = "fluid", name = "hydrogen-chloride", amount = 150}
RECIPE("nylon2"):replace_ingredient("sulfuric-acid", "chlorine")
RECIPE("chloromethane"):replace_ingredient("sulfuric-acid", "hydrogen-chloride")
RECIPE("molten-stainless-steel"):remove_ingredient("chromium"):add_ingredient {type = "item", name = "fecr-alloy", amount = 5}
RECIPE("nexelit-battery"):add_ingredient {type = "item", name = "lead-plate", amount = 5}
RECIPE("py-construction-robot-mk02"):add_ingredient {type = "item", name = "nexelit-battery", amount = 1}
RECIPE("py-logistic-robot-mk02"):add_ingredient {type = "item", name = "nexelit-battery", amount = 1}
RECIPE("ht-locomotive"):replace_ingredient("steel-plate", "aluminium-plate"):add_ingredient {type = "item", name = "glass", amount = 60}:add_ingredient {type = "item", name = "nickel-plate", amount = 50}
RECIPE("ht-generic-wagon"):replace_ingredient("steel-plate", "aluminium-plate"):add_ingredient {type = "item", name = "glass", amount = 20}:add_ingredient {type = "item", name = "nickel-plate", amount = 10}
RECIPE("ht-generic-fluid-wagon"):replace_ingredient("steel-plate", "aluminium-plate"):add_ingredient {type = "item", name = "glass", amount = 20}:add_ingredient {type = "item", name = "nickel-plate", amount = 10}

RECIPE("cresylic-acid"):remove_ingredient("aromatics"):add_ingredient {type = "item", name = "phenol", amount = 10}
RECIPE("outlet-gas-02").category = "fbreactor"
RECIPE("fecr-alloy"):add_ingredient {type = "item", name = "graphite", amount = 3}:remove_unlock("basic-electronics"):add_unlock("stainless-steel-mk01").category = "py-rawores-smelter"
RECIPE("ndfeb-alloy").category = "py-rawores-smelter"
RECIPE("crco-alloy").category = "py-rawores-smelter"
RECIPE("re-tin").category = "py-rawores-smelter"

RECIPE("ppd"):replace_ingredient("aromatics", "nitrobenzene")

RECIPE("fiberboard-mk02"):add_unlock("fiberboard-mk02")
RECIPE("fiberboard-3"):add_unlock("fiberboard-mk02")
RECIPE("biofilm-pyht"):add_unlock("nems")
RECIPE("pa-oxygen"):add_unlock("nucleo-mk03")
RECIPE("pa-helium"):add_unlock("nucleo-mk03")
RECIPE("pa-hydrogen"):add_unlock("nucleo-mk03")
RECIPE("pa-boron"):add_unlock("nucleo-mk03")
RECIPE("pa-coal2"):add_unlock("nucleo-mk02")
RECIPE("pa-aluminium"):add_unlock("nucleo")
RECIPE("pa-nickel"):add_unlock("nucleo")
RECIPE("pa-zinc"):add_unlock("nucleo")
RECIPE("pa-silver"):add_unlock("nucleo")
RECIPE("pa-gold"):add_unlock("nucleo-mk02")
RECIPE("pa-vanadium2"):add_unlock("nucleo-mk02")
RECIPE("fertilizer-2"):add_unlock("fertilizer")
RECIPE("aramid-2"):add_unlock("nano-tech")
RECIPE("ceramic-2"):add_unlock("integrated-circuits-1")

RECIPE("heavy-fermion"):remove_unlock("integrated-circuits-3"):add_unlock("alloys-mk04")

--PYCP ENTITIES UPDATES

RECIPE("distilator-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 15}:add_ingredient {type = "item", name = "biopolymer", amount = 10}:add_ingredient {type = "item", name = "aerogel", amount = 10}
RECIPE("distilator-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "var-josephson-junction", amount = 4}

RECIPE("advanced-foundry-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}
RECIPE("advanced-foundry-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "pi-josephson-junction", amount = 4}

RECIPE("automated-factory-mk01"):replace_ingredient("advanced-circuit", "electronic-circuit")

RECIPE("automated-factory-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 25}:add_ingredient {type = "item", name = "volumetric-capacitor", amount = 10}:add_ingredient {type = "item", name = "biopolymer", amount = 10}
RECIPE("automated-factory-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 4}

RECIPE("ball-mill-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 40}:add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}
RECIPE("ball-mill-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("borax-mine-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("borax-mine-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 1}

RECIPE("botanical-nursery-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "biopolymer", amount = 35}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("botanical-nursery-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 4}

RECIPE("carbon-filter-mk03"):add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "superconductor", amount = 20}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 15}
RECIPE("carbon-filter-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 2}

RECIPE("classifier-mk03"):add_ingredient {type = "item", name = "diamagnetic-material", amount = 20}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}
RECIPE("classifier-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "var-josephson-junction", amount = 2}

RECIPE("desulfurizator-unit-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("desulfurizator-unit-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("evaporator-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("evaporator-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("fawogae-plantation-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("fawogae-plantation-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "nems", amount = 5}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}

RECIPE("fluid-separator-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "diamagnetic-material", amount = 10}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}
RECIPE("fluid-separator-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "var-josephson-junction", amount = 10}

RECIPE("fts-reactor-mk03"):add_ingredient {type = "item", name = "diamagnetic-material", amount = 20}:add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("fts-reactor-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("gasifier-mk03"):add_ingredient {type = "item", name = "diamagnetic-material", amount = 20}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 20}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}
RECIPE("gasifier-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 2}

RECIPE("hpf-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 15}:add_ingredient {type = "item", name = "heavy-fermion", amount = 10}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 10}
RECIPE("hpf-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 4}

RECIPE("ground-borer-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 15}:add_ingredient {type = "item", name = "heavy-fermion", amount = 10}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 10}
RECIPE("ground-borer-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 4}

RECIPE("jaw-crusher-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 40}:add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}
RECIPE("jaw-crusher-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("methanol-reactor-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("methanol-reactor-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "nems", amount = 5}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}

RECIPE("olefin-plant-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("olefin-plant-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("power-house-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 25}:add_ingredient {type = "item", name = "volumetric-capacitor", amount = 10}:add_ingredient {type = "item", name = "biopolymer", amount = 10}
RECIPE("power-house-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 4}

RECIPE("quenching-tower-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("quenching-tower-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 1}

RECIPE("glassworks-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("glassworks-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 1}

RECIPE("rectisol-mk03"):add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "superconductor", amount = 20}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 15}
RECIPE("rectisol-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 2}

RECIPE("sand-extractor-mk03"):add_ingredient {type = "item", name = "diamagnetic-material", amount = 20}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}
RECIPE("sand-extractor-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "pi-josephson-junction", amount = 4}

RECIPE("soil-extractor-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("soil-extractor-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "nems", amount = 5}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}

RECIPE("solid-separator-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("solid-separator-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("tar-processing-unit-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 40}:add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}
RECIPE("tar-processing-unit-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("wpu-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "biopolymer", amount = 35}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("wpu-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 4}

RECIPE("washer-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "diamagnetic-material", amount = 10}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}
RECIPE("washer-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "var-josephson-junction", amount = 10}

--PYRO ENTITIES UPDATES

RECIPE("bof-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}
RECIPE("bof-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("casting-unit-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "nems", amount = 5}
RECIPE("casting-unit-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 2}

RECIPE("eaf-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 10}:add_ingredient {type = "item", name = "superconductor", amount = 5}:add_ingredient {type = "item", name = "crco-alloy", amount = 20}
RECIPE("eaf-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("electrolyzer-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 40}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "graphene-roll", amount = 10}
RECIPE("electrolyzer-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("flotation-cell-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("flotation-cell-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("hydroclassifier-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("hydroclassifier-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "nems", amount = 5}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}

RECIPE("impact-crusher-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 40}:add_ingredient {type = "item", name = "re-magnet", amount = 30}
RECIPE("impact-crusher-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("leaching-station-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "biopolymer", amount = 35}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("leaching-station-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 4}

RECIPE("scrubber-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("scrubber-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("wet-scrubber-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("wet-scrubber-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("smelter-mk01"):add_ingredient {type = "item", name = "ceramic", amount = 50}
RECIPE("smelter-mk02"):add_ingredient {type = "item", name = "ceramic", amount = 50}
RECIPE("smelter-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}
RECIPE("smelter-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("aluminium-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("chromium-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("coal-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("copper-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("iron-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("zinc-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("uranium-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("titanium-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("tin-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("lead-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("nexelit-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("quartz-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("nickel-mine"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}
RECIPE("phosphate-mine-02"):add_ingredient {type = "item", name = "graphene-roll", amount = 5}

--PYFE ENTITIES UPDATES

RECIPE("agitator-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}
RECIPE("agitator-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("automated-screener-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}:add_ingredient {type = "item", name = "nems", amount = 5}
RECIPE("automated-screener-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 2}

RECIPE("centrifugal-pan-mk03"):add_ingredient {type = "item", name = "paramagnetic-material", amount = 10}:add_ingredient {type = "item", name = "superconductor", amount = 5}:add_ingredient {type = "item", name = "crco-alloy", amount = 20}
RECIPE("centrifugal-pan-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("compressor-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 40}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "graphene-roll", amount = 10}
RECIPE("compressor-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("gas-separator-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("gas-separator-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("genlab-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("genlab-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "nems", amount = 5}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}

RECIPE("grease-table-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 40}:add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}
RECIPE("grease-table-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "nv-center", amount = 2}

RECIPE("hydrocyclone-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 50}:add_ingredient {type = "item", name = "biopolymer", amount = 35}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("hydrocyclone-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "hyperelastic-material", amount = 4}

RECIPE("jig-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("jig-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("kmauts-enclosure-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 15}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("kmauts-enclosure-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-dots", amount = 5}

RECIPE("mixer-mk03"):add_ingredient {type = "item", name = "phosphate-glass", amount = 40}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 20}:add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}
RECIPE("mixer-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "parametric-oscilator", amount = 1}

RECIPE("nmf-mk03"):add_ingredient {type = "item", name = "re-magnet", amount = 30}:add_ingredient {type = "item", name = "superconductor", amount = 20}:add_ingredient {type = "item", name = "paramagnetic-material", amount = 15}
RECIPE("nmf-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "quantum-vortex-storage-system", amount = 2}

RECIPE("secondary-crusher-mk03"):add_ingredient {type = "item", name = "diamagnetic-material", amount = 20}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 15}
RECIPE("secondary-crusher-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 6}:add_ingredient {type = "item", name = "pi-josephson-junction", amount = 4}

RECIPE("thickener-mk03"):add_ingredient {type = "item", name = "biopolymer", amount = 30}:add_ingredient {type = "item", name = "carbon-nanotube", amount = 30}:add_ingredient {type = "item", name = "aerogel", amount = 15}
RECIPE("thickener-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "nems", amount = 5}:add_ingredient {type = "item", name = "graphene-roll", amount = 15}

-- RECIPE("xyhiphoe-pool-mk03"):add_ingredient({type = "item", name = "heavy-fermion", amount = 20})
RECIPE("xyhiphoe-pool-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

RECIPE("plankton-farm-mk03"):add_ingredient {type = "item", name = "heavy-fermion", amount = 20}:add_ingredient {type = "item", name = "superconductor", amount = 10}
RECIPE("plankton-farm-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}

-- RECIPE("py-heat-exchanger-mk03"):add_ingredient({type = "item", name = "heavy-fermion", amount = 20})
RECIPE("py-heat-exchanger-mk04"):replace_ingredient("control-unit", "intelligent-unit"):add_ingredient {type = "item", name = "superconductor-servomechanims", amount = 5}:add_ingredient {type = "item", name = "harmonic-absorber", amount = 10}


RECIPE("nmf-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("fine-electronics")

RECIPE("electronic-circuit"):add_ingredient {type = "item", name = "solder", amount = 2}

--PYRO RECIPES UPDATES

RECIPE("high-grade-ti"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("high-grade-alumina"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-aluminium-01"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-aluminium-02"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-aluminium-03"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-aluminium-03-2"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-aluminium-04"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-aluminium-05"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-chromium-01"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-chromium-02"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-chromium-03"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("purified-gold"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-lead-01"):add_ingredient {type = "item", name = "graphite", amount = 2}
RECIPE("molten-lead-02"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-lead-03"):add_ingredient {type = "item", name = "graphite", amount = 2}
RECIPE("molten-lead-04"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-lead-05"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-nickel-00"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-steel-02"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-tin-01"):add_ingredient {type = "item", name = "graphite", amount = 6}
--RECIPE("molten-tin-02"):add_ingredient({type = "item", name = "graphite", amount = 3})
RECIPE("molten-tin-03"):add_ingredient {type = "item", name = "graphite", amount = 3}
--RECIPE("molten-tin-02-2"):add_ingredient({type = "item", name = "graphite", amount = 10})
RECIPE("molten-tin-04"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("molten-tin-05"):add_ingredient {type = "item", name = "graphite", amount = 2}
RECIPE("nexelit-refined-pulp"):add_ingredient {type = "item", name = "graphite", amount = 3}
RECIPE("sinter-unit"):replace_ingredient("processing-unit", "intelligent-unit"):add_ingredient {type = "item", name = "carbon-aerogel", amount = 20}

TECHNOLOGY("machines-mk02"):remove_prereq("coal-processing-2") --:add_prereq('basic-electronics')

RECIPE("biopolymer"):add_ingredient {type = "fluid", name = "diesel", amount = 150}
RECIPE("gold-concentrate"):replace_ingredient("sulfuric-acid", "cyanic-acid")
RECIPE("molten-stainless-steel"):add_ingredient {type = "item", name = "phosphate-rock", amount = 4}
RECIPE("full-molten-stainless-steel-3"):add_ingredient {type = "item", name = "phosphate-rock", amount = 4}
RECIPE("starch"):add_ingredient {type = "item", name = "fiberboard", amount = 1}
RECIPE("starch-2"):add_ingredient {type = "item", name = "fiberboard", amount = 1}
RECIPE("p2s5"):remove_ingredient("stone"):add_ingredient {type = "item", name = "phosphate-rock", amount = 5}
RECIPE("p2s5-2"):remove_ingredient("stone"):add_ingredient {type = "item", name = "phosphate-rock", amount = 5}
RECIPE("ammonium-chloride"):replace_ingredient("water", "ammonia").category = "fbreactor"
RECIPE("battery-1"):add_ingredient {type = "item", name = "rayon", amount = 2}
RECIPE("battery-2"):add_ingredient {type = "item", name = "rayon", amount = 2}
RECIPE("armac-12"):replace_ingredient("chlorine", "ammonia")
RECIPE("gold-solution"):replace_ingredient("water", "ammonia")
RECIPE("mibc"):replace_ingredient("aromatics", "acetone")
RECIPE("nexelit-pulp-02"):replace_ingredient("syngas", "acetone")
RECIPE("outlet-gas-04"):add_ingredient {type = "fluid", name = "tall-oil", amount = 50}
RECIPE("slz-pulp-01"):replace_ingredient("water", "cyanic-acid")
if RECIPE["u-83"] then RECIPE("u-83"):replace_ingredient("nitrogen", "ammonia") end
RECIPE("xylenol-2"):add_ingredient {type = "item", name = "phenol", amount = 10}
RECIPE("z3-reagent"):replace_ingredient("sulfuric-acid", "phosphorous-acid"):replace_ingredient("organic-solvent", "carbon-sulfide")
