--Most was removed see commit for prev versions

RECIPE("fecr-alloy"):remove_unlock("basic-electronics"):add_unlock("stainless-steel-mk01")

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
RECIPE("aramid-2"):add_unlock("quantum-processor")
RECIPE("ceramic-2"):add_unlock("integrated-circuits-1")

RECIPE("heavy-fermion"):remove_unlock("integrated-circuits-3"):add_unlock("alloys-mk04")
RECIPE("nmf-mk01"):remove_unlock("advanced-mining-facilities"):add_unlock("fine-electronics")

TECHNOLOGY("machines-mk02"):remove_prereq("coal-processing-2")
