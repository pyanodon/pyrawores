-- Adds circuit connection definitions for PyRO entities to the pre-existing global table
-- for base-game implementation details, see https://github.com/wube/factorio-data/blob/ed3d12197fbbe63fcd19c0eb23bc826cea44410f/core/lualib/circuit-connector-sprites.lua#L101
-- variation counts from 0 (Python-like).


circuit_connector_definitions["salt-mine"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {--Directions are up, right, down, left.
    { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false }, 
    { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false },
    { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false },
    { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false }
  }
)
