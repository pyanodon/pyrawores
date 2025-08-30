-- Adds circuit connection definitions for PyRO entities to the pre-existing global table
-- for base-game implementation details, see https://github.com/wube/factorio-data/blob/ed3d12197fbbe63fcd19c0eb23bc826cea44410f/core/lualib/circuit-connector-sprites.lua#L101
-- variation counts from 0 (Python-like).

circuit_connector_definitions[ "aluminium-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 1, main_offset = util.by_pixel(150, 85), shadow_offset = util.by_pixel(160, 90), show_shadow = false },
            { variation = 1, main_offset = util.by_pixel(150, 85), shadow_offset = util.by_pixel(160, 90), show_shadow = false },
            { variation = 1, main_offset = util.by_pixel(150, 85), shadow_offset = util.by_pixel(160, 90), show_shadow = false },
            { variation = 1, main_offset = util.by_pixel(150, 85), shadow_offset = util.by_pixel(160, 90), show_shadow = false }
        }
    )

circuit_connector_definitions[ "chromium-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 26, main_offset = util.by_pixel(125, -130), shadow_offset = util.by_pixel(135, -125), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(125, -130), shadow_offset = util.by_pixel(135, -125), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(125, -130), shadow_offset = util.by_pixel(135, -125), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(125, -130), shadow_offset = util.by_pixel(135, -125), show_shadow = false }
        }
    )

circuit_connector_definitions[ "coal-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 2, main_offset = util.by_pixel(115, -50), shadow_offset = util.by_pixel(125, -45), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(115, -50), shadow_offset = util.by_pixel(125, -45), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(115, -50), shadow_offset = util.by_pixel(125, -45), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(115, -50), shadow_offset = util.by_pixel(125, -45), show_shadow = false }
        }
    )

circuit_connector_definitions[ "copper-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 2, main_offset = util.by_pixel(-167, 92), shadow_offset = util.by_pixel(-157, 97), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-167, 92), shadow_offset = util.by_pixel(-157, 97), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-167, 92), shadow_offset = util.by_pixel(-157, 97), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-167, 92), shadow_offset = util.by_pixel(-157, 97), show_shadow = false }
        }
    )

circuit_connector_definitions[ "iron-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 1, main_offset = util.by_pixel(90, 55), shadow_offset = util.by_pixel(100, 60), show_shadow = false },
            { variation = 1, main_offset = util.by_pixel(90, 55), shadow_offset = util.by_pixel(100, 60), show_shadow = false },
            { variation = 1, main_offset = util.by_pixel(90, 55), shadow_offset = util.by_pixel(100, 60), show_shadow = false },
            { variation = 1, main_offset = util.by_pixel(90, 55), shadow_offset = util.by_pixel(100, 60), show_shadow = false }
        }
    )

circuit_connector_definitions[ "lead-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 18, main_offset = util.by_pixel(118, 142), shadow_offset = util.by_pixel(128, 147), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(118, 142), shadow_offset = util.by_pixel(128, 147), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(118, 142), shadow_offset = util.by_pixel(128, 147), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(118, 142), shadow_offset = util.by_pixel(128, 147), show_shadow = false }
        }
    )

circuit_connector_definitions[ "nexelit-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 27, main_offset = util.by_pixel(-133, 102), shadow_offset = util.by_pixel(-123, 107), show_shadow = false },
            { variation = 27, main_offset = util.by_pixel(-133, 102), shadow_offset = util.by_pixel(-123, 107), show_shadow = false },
            { variation = 27, main_offset = util.by_pixel(-133, 102), shadow_offset = util.by_pixel(-123, 107), show_shadow = false },
            { variation = 27, main_offset = util.by_pixel(-133, 102), shadow_offset = util.by_pixel(-123, 107), show_shadow = false }
        }
    )

circuit_connector_definitions[ "nickel-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 2, main_offset = util.by_pixel(-150, 130), shadow_offset = util.by_pixel(-140, 135), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-150, 130), shadow_offset = util.by_pixel(-140, 135), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-150, 130), shadow_offset = util.by_pixel(-140, 135), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(-150, 130), shadow_offset = util.by_pixel(-140, 135), show_shadow = false }
        }
    )

circuit_connector_definitions[ "phosphate-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 18, main_offset = util.by_pixel(72, 185), shadow_offset = util.by_pixel(82, 190), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(72, 185), shadow_offset = util.by_pixel(82, 190), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(72, 185), shadow_offset = util.by_pixel(82, 190), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(72, 185), shadow_offset = util.by_pixel(82, 190), show_shadow = false }
        }
    )

circuit_connector_definitions[ "quartz-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 10, main_offset = util.by_pixel(90, 65), shadow_offset = util.by_pixel(100, 70), show_shadow = false },
            { variation = 10, main_offset = util.by_pixel(90, 65), shadow_offset = util.by_pixel(100, 70), show_shadow = false },
            { variation = 10, main_offset = util.by_pixel(90, 65), shadow_offset = util.by_pixel(100, 70), show_shadow = false },
            { variation = 10, main_offset = util.by_pixel(90, 65), shadow_offset = util.by_pixel(100, 70), show_shadow = false }
        }
    )

circuit_connector_definitions[ "salt-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false },
            { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false },
            { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false },
            { variation = 25, main_offset = util.by_pixel(135, -105), shadow_offset = util.by_pixel(145, -100), show_shadow = false }
        }
    )

circuit_connector_definitions[ "tin-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 7, main_offset = util.by_pixel(107, -7), shadow_offset = util.by_pixel(117, -2), show_shadow = false },
            { variation = 7, main_offset = util.by_pixel(107, -7), shadow_offset = util.by_pixel(117, -2), show_shadow = false },
            { variation = 7, main_offset = util.by_pixel(107, -7), shadow_offset = util.by_pixel(117, -2), show_shadow = false },
            { variation = 7, main_offset = util.by_pixel(107, -7), shadow_offset = util.by_pixel(117, -2), show_shadow = false }
        }
    )

circuit_connector_definitions[ "titanium-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 2, main_offset = util.by_pixel(188, 170), shadow_offset = util.by_pixel(198, 175), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(188, 170), shadow_offset = util.by_pixel(198, 175), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(188, 170), shadow_offset = util.by_pixel(198, 175), show_shadow = false },
            { variation = 2, main_offset = util.by_pixel(188, 170), shadow_offset = util.by_pixel(198, 175), show_shadow = false }
        }
    )

circuit_connector_definitions[ "uranium-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 26, main_offset = util.by_pixel(133, 72), shadow_offset = util.by_pixel(143, 77), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(133, 72), shadow_offset = util.by_pixel(143, 77), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(133, 72), shadow_offset = util.by_pixel(143, 77), show_shadow = false },
            { variation = 26, main_offset = util.by_pixel(133, 72), shadow_offset = util.by_pixel(143, 77), show_shadow = false }
        }
    )

circuit_connector_definitions[ "zinc-mine" ] = circuit_connector_definitions.create_vector
    (
        universal_connector_template,
        { --Directions are up, right, down, left.
            { variation = 18, main_offset = util.by_pixel(137, 137), shadow_offset = util.by_pixel(147, 142), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(137, 137), shadow_offset = util.by_pixel(147, 142), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(137, 137), shadow_offset = util.by_pixel(147, 142), show_shadow = false },
            { variation = 18, main_offset = util.by_pixel(137, 137), shadow_offset = util.by_pixel(147, 142), show_shadow = false }
        }
    )
