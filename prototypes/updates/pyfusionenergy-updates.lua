TECHNOLOGY("advanced-mining-facilities"):remove_pack("chemical-science-pack"):remove_prereq("diamond-mining"):remove_prereq("uranium-processing")
TECHNOLOGY("molybdenum-processing"):remove_pack("chemical-science-pack"):remove_pack("production-science-pack"):remove_prereq("production-science-pack")
TECHNOLOGY("fluid-pressurization"):remove_pack("chemical-science-pack"):remove_pack("logistic-science-pack")
TECHNOLOGY("acetylene"):remove_pack("chemical-science-pack"):remove_pack("logistic-science-pack")

RECIPE("compressor-mk01"):remove_unlock("regolite-mining"):remove_unlock("helium-processing"):remove_unlock("liquid-petroleum-processing"):remove_unlock("advanced-oil-processing"):add_unlock("nitrogen-mk02")
RECIPE("acidgas-2"):remove_unlock("advanced-oil-processing"):add_unlock("sulfur-processing")
RECIPE("olefin"):remove_unlock("fuel-production-mk02"):add_unlock("fuel-production")
RECIPE("gasoline"):remove_unlock("fuel-production-mk02"):add_unlock("fuel-production")
RECIPE("pressured-air"):set_fields {energy_required = 1}

RECIPE("titanium-plate-1"):remove_unlock("coal-processing-1"):add_unlock("alloys-mk01")

ITEM("molybdenum-plate").stack_size = 100

RECIPE("py-heat-exchanger"):remove_unlock("fusion-mk01"):add_unlock("machines-mk02")



RECIPE("secondary-crusher-mk01"):remove_unlock("diamond-mining"):add_unlock("machines-mk01")

RECIPE("automated-screener-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("machines-mk01")
RECIPE("filtration-media"):remove_unlock("filtration-mk02")

RECIPE("jig-mk01"):remove_unlock("diamond-mining"):add_unlock("titanium-mk02")

RECIPE("centrifugal-pan-mk01"):remove_unlock("diamond-mining"):add_unlock("machines-mk03")

RECIPE("gas-separator-mk01"):remove_unlock("helium-processing-mk02"):add_unlock("coke-mk02")

RECIPE("sodium-chlorate"):remove_unlock("vanadium-processing"):add_unlock("salts")

RECIPE("nmf-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("aramid")

RECIPE("nbti-alloy"):remove_unlock("nenbit-matrix"):add_unlock("alloys-mk03")

RECIPE("lead-container"):remove_unlock("coated-container"):add_unlock("aramid")

RECIPE("thickener-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("molybdenum-processing") --:replace_ingredient("electric-engine-unit", "engine-unit")

RECIPE("borax-mine"):remove_unlock("boron")

--pyfusion mk02 unlocks

RECIPE("vacuum-pump-mk02"):add_unlock("machines-mk03")
RECIPE("agitator-mk02"):add_unlock("machines-mk03")
RECIPE("thickener-mk02"):add_unlock("machines-mk03")
RECIPE("hydrocyclone-mk02"):add_unlock("machines-mk03")
RECIPE("mixer-mk02"):add_unlock("machines-mk03")
RECIPE("automated-screener-mk02"):add_unlock("machines-mk03")
RECIPE("secondary-crusher-mk02"):add_unlock("machines-mk03")
RECIPE("plankton-farm-mk02"):add_unlock("machines-mk03")
RECIPE("centrifugal-pan-mk02"):add_unlock("machines-mk03")
RECIPE("jig-mk02"):add_unlock("machines-mk03")
RECIPE("grease-table-mk02"):add_unlock("machines-mk04")
RECIPE("compressor-mk02"):add_unlock("machines-mk03")
RECIPE("gas-separator-mk02"):add_unlock("machines-mk03")
RECIPE("nmf-mk02"):add_unlock("machines-mk03")
--pyfusion mk03 unlocks

RECIPE("vacuum-pump-mk03"):add_unlock("machines-mk04")
RECIPE("agitator-mk03"):add_unlock("machines-mk04")
RECIPE("thickener-mk03"):add_unlock("machines-mk04")
RECIPE("hydrocyclone-mk03"):add_unlock("machines-mk04")
RECIPE("mixer-mk03"):add_unlock("machines-mk04")
RECIPE("automated-screener-mk03"):add_unlock("machines-mk04")
RECIPE("secondary-crusher-mk03"):add_unlock("machines-mk04")
RECIPE("centrifugal-pan-mk03"):add_unlock("machines-mk04")
RECIPE("plankton-farm-mk03"):add_unlock("machines-mk04")
RECIPE("jig-mk03"):add_unlock("machines-mk04")
RECIPE("grease-table-mk03"):add_unlock("machines-mk05")
RECIPE("compressor-mk03"):add_unlock("machines-mk04")
RECIPE("gas-separator-mk03"):add_unlock("machines-mk04")
RECIPE("nmf-mk03"):add_unlock("machines-mk04")

--pyfusion mk04 unlocks

RECIPE("vacuum-pump-mk04"):add_unlock("machines-mk05")
RECIPE("agitator-mk04"):add_unlock("machines-mk05")
RECIPE("thickener-mk04"):add_unlock("machines-mk05")
RECIPE("hydrocyclone-mk04"):add_unlock("machines-mk05")
RECIPE("mixer-mk04"):add_unlock("machines-mk05")
RECIPE("automated-screener-mk04"):add_unlock("machines-mk05")
RECIPE("secondary-crusher-mk04"):add_unlock("machines-mk05")
RECIPE("plankton-farm-mk04"):add_unlock("machines-mk05")
RECIPE("centrifugal-pan-mk04"):add_unlock("machines-mk05")
RECIPE("jig-mk04"):add_unlock("machines-mk05")
RECIPE("compressor-mk04"):add_unlock("machines-mk05")
RECIPE("gas-separator-mk04"):add_unlock("machines-mk05")
RECIPE("nmf-mk04"):add_unlock("machines-mk05")
